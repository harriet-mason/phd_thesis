# Software for Simple Uncertainty Visualisation {#sec-second-paper}

## Introduction
- Reiterate some points from previous chapter
- More focus on grammar of graphics

## Background
### Existing software for visualising uncertainty
- While there are other uncertainty visualisation packages currently available (e.g. `ggdist`) their express purpose is to visualise distributions rather than perform signal suppression. 
- Also uses the `distributional` pacakge to represent an estimate as a distribution rather than a single variable, which allows you to create a distribution table (dibble). If a user has a dibble and wants to visualize a distribution and use interesting custom geoms that don't exist in `ggplot2`, then existing packages such as `ggdist` are sufficient.
- ggdist is the most obvious implementation of uncertainty in the grammar of graphics
  - takes the same approach as ggdibbler (i.e. takes a distribution as an input)

### Uncertainties place in the grammar of graphics
- Not immediately clear where uncertainty should fit in the grammar of graphics

*The Grammar of Graphics* is the fundamental building blocks of the information in a graphic, and it allows a plot to be considered a statistic [@Vanderplas2020]. The process for summarising the information in a plot using *The Grammar of Graphics* is depicted in _____(drawing) [@Leland2005]. Unfortunately, *The Grammar of Graphics* is not perfectly suited to summarise the information in an uncertainty visualisation since it assumes that we start from a finite data set. Very often uncertainty is expressed using a distribution or a resampling method that does not have an upper limit on the "sample size". Additionally many uncertainty visualisation experiments notice an interaction between sample size and graphic effectiveness [@Kale2018; @Newburger2022; @Hofmann2012], an effect that is likely caused by a difference in human perception of mass versus sample. 

Additionally, *The Grammar of Graphics* behaves strangely when the sample size is adjusted and it the distance between two graphics becomes less consistent. _____(drawing) shows how three graphics defined by *The Grammar of Graphics* can change as n approaches infinity. The two graphics that are very similar according to the *The Grammar of Graphics* diverge into different graphics, and two graphics that are very different, converge into the same graphic. This means the statistics visualised in the plot as well as the *The Grammar of Graphics* may not be an adequate to summarise the information in a plot that is being used for uncertainty visualisation. Some authors have noticed difficulties with visualising distributions using `ggplot2` and created extensions that make showing distributions more intuitive [@Pu2020; @Kay2023], however these extensions do not address the core discrepancies with uncertainty visualisation and *The Grammar of Graphics*. This does not mean *The Grammar of Graphics* should be abandoned when we attempt to summaise the information in an uncertainty visualisation, very often visations use the same sample to generate all their plots, so this issue is not always present, however these limitations should be kept in mind when analysing uncertainty visualisations using *The Grammar of Graphics*.



## Signal supression in The Grammar of Graphics

### Inclusion of distributions in the framework
- The grammar of graphics assumes we always start with data
- Including uncertainty fundamentally requires us to start from an assumption rather than data, which is less concrete and harder to map in space (less intuitive)

## Practical feasibility of including uncertainty
- Representations of uncertainty: distributions, samples, two variables

## ggdibbler software
Currently `ggplot2` syntax is unable to handle random variables as inputs. If a user wants to make a plot with a random variable, it must first be converted into a determinsitic value. This is a problem as it does not highlight the uncertain nature of the variable in the graphic. Currently, the process of converting any existing plot into one that performs signal suppression (either through a transformation of variables or by visualising a sample instead of an estimate) is tedious.

### Displaying a distribution as a sample
- Sample method in ggdibbler
- For something to be visible on a plot, it must have area, and anything with area can be subdivided, so technically this approach can always be done
- Subdivides the geometric object that was going to be shown

### Warping the space/coordinates
- Discuss how different aesthetics can be warped within the grammar of graphics

#### Colour
- Bivar & VSUP

#### Position
- I suspect this would be janky?

### Secondary Aesthetics
- The axis of a plot are not independent. Aesthetics that may be considered to be independent can be influenced by other graphical aesthetics
- e.g. Area/Length or Transparency



## Application
- Maybe include an AEMO case study
- Atlas of Living Australia guys also had a good example with rounded locations

## Future Work
- Different types of plots (e.g. scatter plot)
- Different data types for the uncertainty. Currently only have uncertainty in estimates, but could have uncertainty in location in a map for example.
- Alternative variations, e.g. bivariate map.
  - Could implement these methods across different plot types. e.g. what does the space transformation in the bivariate map look like when the x and y component are both spatial instead of coloured.
- Entirely new approaches
- Want to add dibble object so that it is automatic.
- Should include density objects as a "stat_identity" option for the sake of completeness.
