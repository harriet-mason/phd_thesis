# Appendix A — Supplementary Material for “Colour Blinded by the Noise”






::: {.cell}

:::







## Full app screenshots
Screenshots from the app, in the order that the participants would experience them. 

![Demographics 1](figures/screenshot_demographic1.png){#fig-app1 width=90%} 

![Demographics 2](figures/screenshot_demographic2.png){#fig-app2 width=90%} 

![Additional instructions](figures/screenshot_instructions.png){#fig-app3 width=90%} 

![Stimuli example A](figures/screenshot_plots1.png){#fig-app4 width=90%} 

![Stimuli example B](figures/screenshot_plots2.png){#fig-app5 width=90%} 

![End of study comments](figures/screenshot_comments.png){#fig-app6 width=90%} 



## Confusion matrix of numbers
To understand the influence of the number displayed on the participant response, we can look at a confusion table of the number responses (@tbl-confusion-numbers).






::: {#tbl-confusion-numbers .cell tbl-cap='A confusion matrix of the number participants gave, alongside the true number in the plot. The off-diagonal elements are incorrect responses, with any concentration of numbers indicating values that are frequently mistaken for one another: 8 for 3, 6 and 9, and 6 for 5 are the most common.'}
::: {.cell-output-display}
![](A-appA_files/figure-pdf/tbl-confusion-numbers-1.pdf){fig-pos='H' width=100%}
:::
:::






For the cases where there actually was a number visible, we can see that participants typically got the number right, or selected no number visible, rather than making an incorrect guess.
When there was no number, participants seemed to guess 3 more often than the other numbers.







::: {.cell tbl-pos='H' tbl-cap='A table showing the top four most commonly confused numbers.'}

:::






There are also a few numbers that participants seemed to get confused more often than others.
If we focus on the cases where 50 or more incorrect guesses were made, we can see that 3, 6 and 9 were frequently reported as an 8, and 5 was frequently reported as a 6.
This makes sense as we could consider the dots that make up 3, 6, and 9 to be a subset of those covered by 8, with a similar relationship existing between 5 and 6.
Interestingly, the converse is not true.
That is, 8 was not mistaken for a 3, 6, or 9, and 6 was not mistaken for 5.
This seems to suggest that, when participants could not make out the number with confidence, they seemed to have a tendency to add in structure that wasn't there, rather than miss structure that was there.







::: {#tbl-nonumber-mistakes .cell tbl-pos='H' tbl-cap='Numbers that were most commonly identified as \'no number visible\', ordered from most to least frequent. The order roughly coincides, inversely, with the number of \'dots\' that make up the number, suggesting that numbers constructed with fewer dots are harder to identify.'}
::: {.cell-output-display}
\begingroup\fontsize{10}{12}\selectfont

\begin{longtable}[t]{lrrr}
\toprule
Selected & Correct & Total & Dots\\
\midrule
\addlinespace[0em]
\multicolumn{4}{l}{\textbf{}}\\
\hspace{1em}No number visible & 1 & 324 & 116\\
\hspace{1em}No number visible & 7 & 306 & 159\\
\hspace{1em}No number visible & 4 & 282 & 193\\
\hspace{1em}No number visible & 5 & 258 & 216\\
\hspace{1em}No number visible & 8 & 251 & 254\\
\hspace{1em}No number visible & 3 & 228 & 211\\
\hspace{1em}No number visible & 9 & 227 & 235\\
\hspace{1em}No number visible & 6 & 220 & 233\\
\hspace{1em}No number visible & 0 & 207 & 223\\
\hspace{1em}No number visible & 2 & 165 & 224\\
\bottomrule
\end{longtable}
\endgroup{}


:::
:::








Additionally, the number 1 (and possibly 7) were more frequently reported as no number visible relative to the other numbers (@tbl-nonumber-mistakes).
This might be due to those numbers having less circles in the "number" group relative to the "background" group, as we can see the top 3 numbers reported as  "no number" also had the lowest number of "number" dots relative to those in the background.
However, this trend seems to drop off after 1, 7, and 4.


## Duration Analysis
The trend in the amount of time participants spent on each question seems to align with the probability of getting the question correct.
@fig-duration-heatmap shows the median amount of seconds spent on each $D$, $V$, and plot type.
Unsurprisingly, the most amount of time across all plots was on the $D=1$ case, when the signal was not particularly strong.
The pixel and transparency maps have a lower triangle of easy to see numbers, that become harder to extract as both $D$ decreases and $V$ increases.
It is also clear that participants rarely spent more than a few seconds on each plot.
This also highlights that, by making uncertainty something that should be visibly seen, a well designed uncertainty visualisation can be correctly within a few seconds.






::: {.cell}
::: {.cell-output-display}
![A heatmap showing the median duration accross each D, V, and plot type.](A-appA_files/figure-pdf/fig-duration-heatmap-1.pdf){#fig-duration-heatmap fig-pos='H' width=100%}
:::
:::

::: {.cell}

:::






## Demographic Analysis
The demographic analysis indicates no relationship between the demographic details and the proportion of correct responses. 






::: {.cell}
::: {.cell-output-display}
![Plots showing the overall distribution of correct answers from the participants, as well as the relationship betweeen the five demographic responses and the probability of correctly identifying the number in the stimuli.](A-appA_files/figure-pdf/demographics-1.pdf){fig-pos='H' width=100%}
:::
:::







## Additional model comparison results
The distance-based results as well as all pairwise comparisons, as mentioned in the main text.






::: {.cell tbl-pos='H'}
::: {.cell-output-display}
\begin{table}

\caption{\label{tab:v-trend}Results for Standard Deviation Trend by Plot Type at Distance = 1}
\centering
\begin{tabular}[t]{l|r|r|r|r}
\hline
plot\_type & V.trend & SE & z.ratio & p.value\\
\hline
Choropleth & -0.026 & 0.056 & -0.470 & 0.638\\
\hline
Bivariate & -0.039 & 0.055 & -0.701 & 0.483\\
\hline
VSUP & -0.577 & 0.060 & -9.683 & 0.000\\
\hline
Pixel & -0.515 & 0.063 & -8.216 & 0.000\\
\hline
Transparency & -0.539 & 0.066 & -8.217 & 0.000\\
\hline
\end{tabular}
\end{table}


:::

::: {.cell-output-display}
\begin{table}

\caption{\label{tab:v-trend}Results for Standard Deviation Trend by Plot Type at Distance = 2}
\centering
\begin{tabular}[t]{l|r|r|r|r}
\hline
plot\_type & V.trend & SE & z.ratio & p.value\\
\hline
Choropleth & 0.110 & 0.097 & 1.132 & 0.258\\
\hline
Bivariate & -0.042 & 0.082 & -0.511 & 0.609\\
\hline
VSUP & -1.849 & 0.077 & -23.942 & 0.000\\
\hline
Pixel & -0.639 & 0.047 & -13.731 & 0.000\\
\hline
Transparency & -0.581 & 0.051 & -11.454 & 0.000\\
\hline
\end{tabular}
\end{table}


:::

::: {.cell-output-display}
\begin{table}

\caption{\label{tab:v-trend}Results for Standard Deviation Trend by Plot Type at Distance = 3}
\centering
\begin{tabular}[t]{l|r|r|r|r}
\hline
plot\_type & V.trend & SE & z.ratio & p.value\\
\hline
Choropleth & 0.245 & 0.190 & 1.288 & 0.198\\
\hline
Bivariate & -0.045 & 0.160 & -0.278 & 0.781\\
\hline
VSUP & -3.121 & 0.139 & -22.458 & 0.000\\
\hline
Pixel & -0.762 & 0.077 & -9.870 & 0.000\\
\hline
Transparency & -0.624 & 0.092 & -6.753 & 0.000\\
\hline
\end{tabular}
\end{table}


:::

::: {.cell-output-display}
\begin{table}

\caption{\label{tab:v-trend}Results for Standard Deviation Trend by Plot Type at Distance = 4}
\centering
\begin{tabular}[t]{l|r|r|r|r}
\hline
plot\_type & V.trend & SE & z.ratio & p.value\\
\hline
Choropleth & 0.381 & 0.290 & 1.316 & 0.188\\
\hline
Bivariate & -0.047 & 0.245 & -0.193 & 0.847\\
\hline
VSUP & -4.394 & 0.209 & -21.040 & 0.000\\
\hline
Pixel & -0.886 & 0.124 & -7.154 & 0.000\\
\hline
Transparency & -0.667 & 0.149 & -4.475 & 0.000\\
\hline
\end{tabular}
\end{table}


:::
:::

::: {.cell}
::: {.cell-output-display}
\begin{table}

\caption{\label{tab:basicmodel}Results for Standard Deviation Trend by Plot Type at Distance = 1}
\centering
\begin{tabular}[t]{l|r|r|r|r}
\hline
contrast & estimate & SE & z.ratio & p.value\\
\hline
Choropleth - Bivariate & 0.012 & 0.079 & 0.158 & 1.000\\
\hline
Choropleth - VSUP & 0.550 & 0.082 & 6.721 & 0.000\\
\hline
Choropleth - Pixel & 0.489 & 0.084 & 5.809 & 0.000\\
\hline
Choropleth - Transparency & 0.512 & 0.086 & 5.938 & 0.000\\
\hline
Bivariate - VSUP & 0.538 & 0.081 & 6.611 & 0.000\\
\hline
Bivariate - Pixel & 0.476 & 0.084 & 5.695 & 0.000\\
\hline
Bivariate - Transparency & 0.500 & 0.086 & 5.826 & 0.000\\
\hline
VSUP - Pixel & -0.062 & 0.086 & -0.717 & 0.953\\
\hline
VSUP - Transparency & -0.038 & 0.088 & -0.430 & 0.993\\
\hline
Pixel - Transparency & 0.024 & 0.090 & 0.263 & 0.999\\
\hline
\end{tabular}
\end{table}


:::

::: {.cell-output-display}
\begin{table}

\caption{\label{tab:basicmodel}Results for Standard Deviation Trend by Plot Type at Distance = 2}
\centering
\begin{tabular}[t]{l|r|r|r|r}
\hline
contrast & estimate & SE & z.ratio & p.value\\
\hline
Choropleth - Bivariate & 0.151 & 0.127 & 1.194 & 0.755\\
\hline
Choropleth - VSUP & 1.959 & 0.124 & 15.784 & 0.000\\
\hline
Choropleth - Pixel & 0.748 & 0.107 & 6.966 & 0.000\\
\hline
Choropleth - Transparency & 0.691 & 0.109 & 6.320 & 0.000\\
\hline
Bivariate - VSUP & 1.807 & 0.112 & 16.100 & 0.000\\
\hline
Bivariate - Pixel & 0.597 & 0.094 & 6.360 & 0.000\\
\hline
Bivariate - Transparency & 0.540 & 0.096 & 5.620 & 0.000\\
\hline
VSUP - Pixel & -1.211 & 0.089 & -13.559 & 0.000\\
\hline
VSUP - Transparency & -1.268 & 0.092 & -13.827 & 0.000\\
\hline
Pixel - Transparency & -0.057 & 0.068 & -0.835 & 0.920\\
\hline
\end{tabular}
\end{table}


:::

::: {.cell-output-display}
\begin{table}

\caption{\label{tab:basicmodel}Results for Standard Deviation Trend by Plot Type at Distance = 3}
\centering
\begin{tabular}[t]{l|r|r|r|r}
\hline
contrast & estimate & SE & z.ratio & p.value\\
\hline
Choropleth - Bivariate & 0.290 & 0.249 & 1.163 & 0.772\\
\hline
Choropleth - VSUP & 3.367 & 0.236 & 14.242 & 0.000\\
\hline
Choropleth - Pixel & 1.007 & 0.206 & 4.897 & 0.000\\
\hline
Choropleth - Transparency & 0.869 & 0.212 & 4.101 & 0.000\\
\hline
Bivariate - VSUP & 3.077 & 0.212 & 14.503 & 0.000\\
\hline
Bivariate - Pixel & 0.718 & 0.178 & 4.034 & 0.001\\
\hline
Bivariate - Transparency & 0.579 & 0.185 & 3.132 & 0.015\\
\hline
VSUP - Pixel & -2.359 & 0.158 & -14.938 & 0.000\\
\hline
VSUP - Transparency & -2.497 & 0.166 & -15.034 & 0.000\\
\hline
Pixel - Transparency & -0.138 & 0.120 & -1.150 & 0.780\\
\hline
\end{tabular}
\end{table}


:::

::: {.cell-output-display}
\begin{table}

\caption{\label{tab:basicmodel}Results for Standard Deviation Trend by Plot Type at Distance = 4}
\centering
\begin{tabular}[t]{l|r|r|r|r}
\hline
contrast & estimate & SE & z.ratio & p.value\\
\hline
Choropleth - Bivariate & 0.429 & 0.380 & 1.128 & 0.792\\
\hline
Choropleth - VSUP & 4.775 & 0.358 & 13.337 & 0.000\\
\hline
Choropleth - Pixel & 1.267 & 0.315 & 4.018 & 0.001\\
\hline
Choropleth - Transparency & 1.048 & 0.326 & 3.212 & 0.012\\
\hline
Bivariate - VSUP & 4.346 & 0.322 & 13.488 & 0.000\\
\hline
Bivariate - Pixel & 0.838 & 0.275 & 3.051 & 0.019\\
\hline
Bivariate - Transparency & 0.619 & 0.287 & 2.157 & 0.196\\
\hline
VSUP - Pixel & -3.508 & 0.242 & -14.521 & 0.000\\
\hline
VSUP - Transparency & -3.727 & 0.256 & -14.576 & 0.000\\
\hline
Pixel - Transparency & -0.219 & 0.193 & -1.133 & 0.789\\
\hline
\end{tabular}
\end{table}


:::
:::






<!--
## Lag effects






::: {.cell}
::: {.cell-output-display}
![](A-appA_files/figure-pdf/unnamed-chunk-1-1.pdf)
:::
:::






## Also check for tiredness






::: {.cell}

:::





-->
