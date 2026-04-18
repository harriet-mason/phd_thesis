library(tidyverse)
library(packcircles)
library(gglogo)
library(scales)
library(ggdibbler)
library(distributional)
library(colorspace)
library(patchwork)
library(ggthemes)
library(sf)
library(khroma)
library(ggdist)
library(scales)
library(glue)
library(digest)
library(ggbeeswarm)
library(conflicted)
conflicts_prefer(dplyr::select)
conflicts_prefer(dplyr::filter)
conflicts_prefer(khroma::color)
conflicts_prefer(stats::chisq.test)

################## FUNCTIONS FROM NICK PACKAGE #################
create_poly_packings <- function(areas,
                                 n_points){
  
  n_circles <- length(areas)
  
  areas %>%
    sample(n_circles) %>%
    packcircles::circleProgressiveLayout() %>%
    packcircles::circleLayoutVertices(npoints = n_points) %>%
    tibble::as_tibble()
  
}

create_circle_plate <- function(){
  circle_vec <- sample(x = (c(25, 50, 125)/100),
                       size = 1000,
                       replace = TRUE)
  
  create_poly_packings(areas = circle_vec, 
                       n_points = 50)
}


cast_packing_poly <- function(poly_packing){
  sf::st_as_sf(poly_packing,
               coords = c("x", "y")) %>%
    dplyr::group_by(id) %>%
    dplyr::summarise(do_union = FALSE) %>%
    sf::st_cast("POLYGON") %>%
    dplyr::ungroup()
}

cast_font_sf <- function(font_df){
  font_df %>% 
    sf::st_as_sf(coords = c("x", "y")) %>% 
    dplyr::group_by(glyph) %>%
    dplyr::summarise(do_union = FALSE) %>%
    sf::st_cast("POLYGON") %>% 
    dplyr::ungroup() 
}

is_sf_intersects <- function(x, y) {
  as.logical(lengths(sf::st_intersects(x, y)))
}

overlay_text_in_circle <- function(circle_plate, glyph_sf){
  circle_plate %>% 
    dplyr::mutate(in_text = is_sf_intersects(circle_plate, 
                                             glyph_sf))
}

# make letter
letter_data <- function(char, letter_aspect = 0.75) {
  letter <- letterToPolygon(char, fontfamily="Helvetica") |>
    select(x,y) |>
    mutate(glyph = char,
           x = rescale(x, to= letter_aspect*c(-10, 10)),
           y = rescale(y, to= c(-10, 10)))
  letter_sf <- cast_font_sf(letter)
  circle_plate <- create_circle_plate()
  circle_plate_sf <- cast_packing_poly(circle_plate)
  overlay_text_in_circle(circle_plate_sf, letter_sf)
}

############################## DATA GENERATION ####################

gen_data <- function(D, V, parentV = 1, noiseV = 0, 
                     number = 1, seed = 505){
  # set dependent functions
  p <-  length(D)
  q <- length(V)
  letter_aspect <- ifelse(number == 1, 0.4, 0.75)
  
  # set plate to work with
  plate_data <- letter_data(number, letter_aspect) |>
    mutate(group = factor(ifelse(in_text, "in", "out"))) |>
    select(-in_text)
  
  # split in and out group
  out_bubbles <- plate_data |>
    filter(group == "out")|>
    select(-id) |>
    rowid_to_column()
  in_bubbles <- plate_data |>
    filter(group == "in") |>
    select(-id) |>
    rowid_to_column()
  
  # Get n values
  n_in <- dim(in_bubbles)[1] 
  n_out <- dim(out_bubbles)[1] 
  
  # make data for outgroup
  outgroup <- expand_grid(D, V) |>
    mutate(estimate = dist_normal(0-0.5*D, parentV),
           variance = dist_uniform(V, V + noiseV),
           group = "out") |>
    sample_expand(n_out, seed) |>
    mutate(estimate_dist = dist_normal(estimate, variance),
           drawID = as.integer(drawID)) |>
    rename(rowid = drawID) |>
    left_join(out_bubbles)
  
  # make data for ingroup
  ingroup <- expand_grid(D, V) |>
    mutate(estimate = dist_normal(0+0.5*D, parentV),
           variance = dist_uniform(V, V + noiseV),
           group = "in") |>
    sample_expand(n_in, seed=seed) |>
    mutate(estimate_dist = dist_normal(estimate, variance),
           drawID = as.integer(drawID)) |>
    rename(rowid = drawID) |>
    left_join(in_bubbles)
  
  #combine out and in group data
  all_data <- rbind(outgroup, ingroup)
  all_data |>
    mutate(number = as.integer(number))
}


####################### PLOT LIST GENERATION ####################
# ggdist generation

dist_list <- function(all_data){
  all_data |>
    group_by(D, V) |>
    group_map(~ ggplot(.) +
                stat_slab(aes(xdist = estimate_dist, colour=group),
                          fill=NA, linewidth=0.05, alpha=0.5) +
                scale_colour_manual(values = c("#DDAA33", "#004488")) +
                theme_few() +
                labs(y = "f(X)", x = "X") + 
                theme(aspect.ratio = 1, 
                      legend.position = "none")
    )
}

# Pixel map generation
pixel_list <- function(all_data, times=10){
  all_data |>
    group_by(D, V) |>
    group_map(~ ggplot(.) + 
                geom_sf_sample(aes(geometry = geometry, 
                                   fill = estimate_dist),
                               times = times,
                               col=NA)+ 
                theme_void() +
                theme(legend.position = "none") +
                scale_fill_davos() 
              )
  
}

# Transparency map generation
transparency_list <- function(all_data, times=10){
  all_data |>
    group_by(D, V) |>
    group_map(~ ggplot(.) + 
                geom_sf_sample(aes(geometry = geometry, 
                                   fill = estimate_dist),
                               times = times,
                               position = "identity",
                               alpha = (1.05/times),
                               col=NA)+ 
                theme_void() +
                theme(legend.position = "none") +
                scale_fill_davos() 
              )
  
}

# Choropleth map generation
choropleth_list <- function(all_data){
  all_data |>
    group_by(D, V) |>
    group_map(~ ggplot(.) + 
                geom_sf(aes(geometry = geometry, 
                            fill = estimate),
                        col=NA)+ 
                theme_void() +
                theme(legend.position = "none") +
                scale_fill_davos() 
              )
  
}

colsupress <- function(basecols, hue=1, sat=1, val=1) {
  X <- diag(c(hue, sat, val)) %*% rgb2hsv(col2rgb(basecols))
  hsv(pmin(X[1,], 1), pmin(X[2,], 1), pmin(X[3,], 1))
}

bivar_pal <- function(basecols, v_val = 0.8){
  c(basecols,
    colsupress(basecols, sat=v_val),
    colsupress(colsupress(basecols, sat=v_val), sat=v_val),
    colsupress(colsupress(colsupress(basecols, sat=v_val), sat=v_val), sat=v_val),
    colsupress(colsupress(colsupress(colsupress(basecols, sat=v_val), sat=v_val), 
                          sat=v_val), sat=v_val))
}

bivar_prep <- function(grouped_data){
  new_data <- grouped_data

  basecols <- color("davos")(16)

  
  # recursively decrease value
  bivariatepal <- bivar_pal(basecols)
  
  # establish levels of palette
  names(bivariatepal) <- paste(rep(1:16, 5), "-" , rep(1:5, each=16), sep="")
  
  category_values <- seq(min(new_data$estimate), max(new_data$estimate), length.out=17)
  
  bivariate_assignment <- data.frame(colors = bivariatepal, mean_min = rep(category_values[1:16],5),
                                     mean_max = rep(category_values[2:17],5), variance_min = rep(0:4, each=16),
                                     variance_max = rep(1:5, each=16))
  
  new_data$bivariate_text <- NA
  
  for (i in 1:length(new_data$estimate)){
    new_data[i,]$bivariate_text <- 
      bivariate_assignment[bivariate_assignment$mean_min <= new_data$estimate[i] & 
                             bivariate_assignment$mean_max >= new_data$estimate[i] & 
                             bivariate_assignment$variance_min <= new_data$variance[i] & 
                             bivariate_assignment$variance_max >= new_data$variance[i],]$colors[1]
  }
  new_data
}

bivar_list <- function(all_data){
  all_data |>
    group_by(D, V) |>
    group_map(~ bivar_prep(.) |>
                ggplot() +
                geom_sf(aes(geometry = geometry, 
                            fill = bivariate_text), 
                        color = NA) + 
                scale_fill_identity() +
                theme_void() +
                theme(legend.position = "none")
    )
}


colourblend <- function(basecols, p_length, nblend) {
  X <- rgb2hsv(col2rgb(unique(basecols)))
  v1 <- X[,seq(1,dim(X)[2], 2)]
  v2 <- X[,seq(2,dim(X)[2], 2)]
  if("matrix" %in% class(v1)){
    # hue issue wrap around pt 1
    v3 <- (v1+v2)
    v3["h",] <- ifelse(abs(v1["h",]-v2["h",])>0.5, v3["h",]+1, v3["h",])
    v3 <- v3/2
    # hue issue wrap around pt 2
    v3["h",] <- ifelse(v3["h",]>=1 , v3["h",]-1 ,v3["h",])
    hsv(rep(v3[1,], each=nblend), rep(v3[2,], each=nblend), rep(v3[3,], each=nblend))
  } else {
    v3 <- (v1+v2)
    v3["h"] <- ifelse(abs(v1["h"]-v2["h"])>0.5, v3["h"]+1, v3["h"])
    v3 <- v3/2
    v3["h"] <- ifelse(v3["h"]>=1 , v3["h"]-1 ,v3["h"])
    rep(hsv(h=v3[1], s=v3[2], v=v3[3]), p_length)
  }
}

VSUPfunc <- function(basecols, p_length, nblend){
  colourblend(colsupress(basecols, sat=0.5), p_length, nblend)
}

VSUP_pal <- function(basecols, p=16){
  c(basecols,
    VSUPfunc(basecols, p, 2),
    VSUPfunc(VSUPfunc(basecols, p, 2), p, 4),
    VSUPfunc(VSUPfunc(VSUPfunc(basecols, p, 2), p, 4), p, 8),
    VSUPfunc(VSUPfunc(VSUPfunc(VSUPfunc(basecols, p, 2), p, 4), p, 8), p, 16)
  )
}


VSUP_prep <- function(grouped_data){
  new_data <- grouped_data
  basecols <- color("davos")(16)
  VSUP <- VSUP_pal(basecols)
  names(VSUP) <- paste(rep(1:16, 5), "-" , rep(1:5, each=16), sep="")
  
  category_values <- seq(min(new_data$estimate), max(new_data$estimate), length.out=17)
  
  VSUP_assignment <- data.frame(colors = VSUP, mean_min = rep(category_values[1:16],5),
                                     mean_max = rep(category_values[2:17],5), variance_min = rep(0:4, each=16),
                                     variance_max = rep(1:5, each=16))
  
  new_data$VSUP_text <- NA
  
  for (i in 1:length(new_data$estimate)){
    new_data[i,]$VSUP_text <- 
      VSUP_assignment[VSUP_assignment$mean_min <= new_data$estimate[i] &
                             VSUP_assignment$mean_max >= new_data$estimate[i] & 
                             VSUP_assignment$variance_min <= new_data$variance[i] & 
                             VSUP_assignment$variance_max >= new_data$variance[i],]$colors[1]
    
  }
  new_data
}
# VSUP

VSUP_list <- function(all_data){
  all_data |>
    group_by(D, V) |>
    group_map(~ VSUP_prep(.) |>
                ggplot() +
                geom_sf(aes(geometry = geometry, 
                            fill = VSUP_text), 
                        color = NA) + 
                scale_fill_identity() +
                theme_void() +
                theme(legend.position = "none")
    )
}




####################### P-VALUE CALC & PLOT ####################

# Test data function
test_data <- function(all_data, times=100){
  data1 <- all_data |>
    select(rowid, D, V, estimate_dist, group) |>
    st_drop_geometry(x) |>
    sample_expand(times) |>
    group_by(D, V, drawID, group) |>
    summarise(x = mean(estimate_dist),
              s2 = var(estimate_dist),
              n = n()) |>
    ungroup() |>
    pivot_wider(id_cols = D:drawID,
                values_from = x:n,
                names_from = group) 
  data1
  tdist <- dist_student_t(data1$n_in[1] + data1$n_out[1] - 2)
  data1 |>
    # s-pooled (equal variance assumed t-test)
    mutate(sp = ((n_in-1)*s2_in + (n_out-1)*s2_out)/(n_in + n_out -2)) |>
    # t-stat
    mutate(tstat = x_out - x_in/(sp*sqrt((1/n_in) + (1/n_out)))) |>
    mutate(pvalue = unlist(cdf(tdist, tstat)), # p-value
           cohensd = (x_in- x_out)/sp) # cohens d
}

test_mean <- function(tdata) {
  tdata |>
    group_by(D, V) |>
    summarise(mpval = round(mean(pvalue), 3),
              mcd = round(mean(cohensd), 3)) |>
    ungroup()
}

# pvals plot
plot_pvals <- function(tdata, mdata){
  ggplot(tdata) +
    geom_point(aes(x=D, y=V, colour=pvalue), 
               position = "jitter") +
    geom_label(data = mdata, aes(x=D, y=V, label = mpval)) +
    theme_few() +
    theme(aspect.ratio=1)
}

# cohens d plot
plot_cohensd <- function(tdata, mdata){
  ggplot(tdata) +
    geom_point(aes(x=D, y=V, colour=cohensd), 
               position = "jitter") +
    geom_label(data = mdata, aes(x=D, y=V, label = mcd)) +
    theme_few() +
    theme(aspect.ratio=1) 
}


plot_dists <- function(all_data){
  all_data  |>
    ggplot(aes(xdist = estimate_dist)) +
    stat_slab(aes(colour=group), normalize = "panels",
              fill=NA, linewidth=0.1, alpha=0.5) +
    facet_grid(rows = vars(V), cols = vars(D)) +
    theme_few()
}

####################### ADD ID AND SAVE DATA ####################

make_id_data <- function(all_data){
  all_data |>
    mutate(parm_id = glue("{D}-D--{V}-V--{number}-num"), # assign parameter id to data set
           dataset_id = glue("{parm_id}")
    ) |>
    rowwise() |> 
    mutate(study_id = digest(dataset_id))  |>  # encrypt data set ID with library(digest)
    ungroup()
}

data_id <- function(old_id, id_data){
  new <- id_data |> 
    distinct(D, V, parm_id, dataset_id, study_id, number)
  if(is.null(old_id)){
    return(new)
  }
  rbind(old_id, new)
}

grouped_data_save <- function(data){
  study_id <- data$study_id[1]
  write.csv(data,
            file = paste0("App/plots/data/updated_",
                          study_id,
                          ".csv"),
            row.names = F)
}

save_plot_data <- function(id_data){
  id_data |>
    group_by(D,V) |>
    group_map(~ grouped_data_save(.)
    )
  
}

####################### SAVE PLOTS ####################

save_pix <- function(plot){
  # get study ID
  study_id <- plot@data$study_id[1]
  
  # save plot
  ggsave(plot = plot,
         filename = paste0("App/plots/png/",study_id, "_pix.png"), 
         device = png, 
         width = 512, 
         height = 512, 
         units = "px", 
         dpi = "screen")
}

save_choro <- function(plot){
  # get study ID
  study_id <- plot@data$study_id[1]
  
  # save plot
  ggsave(plot = plot,
         filename = paste0("App/plots/png/",study_id, "_chor.png"), 
         device = png, 
         width = 512, 
         height = 512, 
         units = "px", 
         dpi = "screen")
}

save_vsup <- function(plot){
  # get study ID
  study_id <- plot@data$study_id[1]
  
  # save plot
  ggsave(plot = plot,
         filename = paste0("App/plots/png/",study_id, "_vsup.png"), 
         device = png, 
         width = 512, 
         height = 512, 
         units = "px", 
         dpi = "screen") 
}

save_bivar <- function(plot){
  # get study ID
  study_id <- plot@data$study_id[1]
  
  # save plot
  ggsave(plot = plot,
         filename = paste0("App/plots/png/",study_id, "_biv.png"), 
         device = png, 
         width = 512, 
         height = 512, 
         units = "px", 
         dpi = "screen")
}

save_trans <- function(plot){
  # get study ID
  study_id <- plot@data$study_id[1]
  
  # save plot
  ggsave(plot = plot,
         filename = paste0("App/plots/png/",study_id, "_over.png"), 
         device = png, 
         width = 512, 
         height = 512, 
         units = "px", 
         dpi = "screen")
}

