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
\hspace{1em}No number visible & 7 & 306 & 158\\
\hspace{1em}No number visible & 4 & 282 & 186\\
\hspace{1em}No number visible & 5 & 258 & 208\\
\hspace{1em}No number visible & 8 & 251 & 239\\
\hspace{1em}No number visible & 3 & 228 & 215\\
\hspace{1em}No number visible & 9 & 227 & 231\\
\hspace{1em}No number visible & 6 & 220 & 247\\
\hspace{1em}No number visible & 0 & 207 & 209\\
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
Choropleth & -0.026 & 0.056 & -0.459 & 0.646\\
\hline
Bivariate & -0.037 & 0.055 & -0.675 & 0.500\\
\hline
VSUP & -0.576 & 0.059 & -9.704 & 0.000\\
\hline
Pixel & -0.516 & 0.063 & -8.252 & 0.000\\
\hline
Transparency & -0.540 & 0.066 & -8.231 & 0.000\\
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
Choropleth & 0.110 & 0.098 & 1.127 & 0.260\\
\hline
Bivariate & -0.041 & 0.083 & -0.493 & 0.622\\
\hline
VSUP & -1.849 & 0.077 & -23.915 & 0.000\\
\hline
Pixel & -0.639 & 0.047 & -13.736 & 0.000\\
\hline
Transparency & -0.583 & 0.051 & -11.438 & 0.000\\
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
Choropleth & 0.246 & 0.193 & 1.277 & 0.201\\
\hline
Bivariate & -0.044 & 0.163 & -0.272 & 0.786\\
\hline
VSUP & -3.122 & 0.139 & -22.406 & 0.000\\
\hline
Pixel & -0.762 & 0.078 & -9.816 & 0.000\\
\hline
Transparency & -0.626 & 0.093 & -6.714 & 0.000\\
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
Choropleth & 0.382 & 0.293 & 1.304 & 0.192\\
\hline
Bivariate & -0.048 & 0.249 & -0.192 & 0.848\\
\hline
VSUP & -4.395 & 0.209 & -20.991 & 0.000\\
\hline
Pixel & -0.885 & 0.125 & -7.108 & 0.000\\
\hline
Transparency & -0.669 & 0.150 & -4.453 & 0.000\\
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
Choropleth - Bivariate & 0.012 & 0.078 & 0.149 & 1.000\\
\hline
Choropleth - VSUP & 0.551 & 0.081 & 6.759 & 0.000\\
\hline
Choropleth - Pixel & 0.491 & 0.084 & 5.861 & 0.000\\
\hline
Choropleth - Transparency & 0.514 & 0.086 & 5.978 & 0.000\\
\hline
Bivariate - VSUP & 0.539 & 0.081 & 6.650 & 0.000\\
\hline
Bivariate - Pixel & 0.479 & 0.083 & 5.745 & 0.000\\
\hline
Bivariate - Transparency & 0.502 & 0.086 & 5.865 & 0.000\\
\hline
VSUP - Pixel & -0.060 & 0.086 & -0.697 & 0.957\\
\hline
VSUP - Transparency & -0.037 & 0.088 & -0.416 & 0.994\\
\hline
Pixel - Transparency & 0.023 & 0.090 & 0.257 & 0.999\\
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
Choropleth - Bivariate & 0.151 & 0.128 & 1.179 & 0.764\\
\hline
Choropleth - VSUP & 1.960 & 0.125 & 15.695 & 0.000\\
\hline
Choropleth - Pixel & 0.750 & 0.108 & 6.915 & 0.000\\
\hline
Choropleth - Transparency & 0.693 & 0.110 & 6.281 & 0.000\\
\hline
Bivariate - VSUP & 1.809 & 0.113 & 15.986 & 0.000\\
\hline
Bivariate - Pixel & 0.599 & 0.095 & 6.312 & 0.000\\
\hline
Bivariate - Transparency & 0.542 & 0.097 & 5.584 & 0.000\\
\hline
VSUP - Pixel & -1.210 & 0.090 & -13.504 & 0.000\\
\hline
VSUP - Transparency & -1.267 & 0.092 & -13.755 & 0.000\\
\hline
Pixel - Transparency & -0.056 & 0.069 & -0.821 & 0.924\\
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
Choropleth - Bivariate & 0.290 & 0.252 & 1.151 & 0.779\\
\hline
Choropleth - VSUP & 3.368 & 0.238 & 14.153 & 0.000\\
\hline
Choropleth - Pixel & 1.008 & 0.208 & 4.852 & 0.000\\
\hline
Choropleth - Transparency & 0.872 & 0.214 & 4.074 & 0.000\\
\hline
Bivariate - VSUP & 3.078 & 0.214 & 14.368 & 0.000\\
\hline
Bivariate - Pixel & 0.718 & 0.180 & 3.982 & 0.001\\
\hline
Bivariate - Transparency & 0.582 & 0.188 & 3.102 & 0.016\\
\hline
VSUP - Pixel & -2.360 & 0.159 & -14.863 & 0.000\\
\hline
VSUP - Transparency & -2.496 & 0.167 & -14.935 & 0.000\\
\hline
Pixel - Transparency & -0.136 & 0.121 & -1.124 & 0.794\\
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
Choropleth - Bivariate & 0.430 & 0.385 & 1.118 & 0.797\\
\hline
Choropleth - VSUP & 4.777 & 0.360 & 13.259 & 0.000\\
\hline
Choropleth - Pixel & 1.267 & 0.318 & 3.981 & 0.001\\
\hline
Choropleth - Transparency & 1.051 & 0.329 & 3.194 & 0.012\\
\hline
Bivariate - VSUP & 4.348 & 0.325 & 13.362 & 0.000\\
\hline
Bivariate - Pixel & 0.837 & 0.278 & 3.008 & 0.022\\
\hline
Bivariate - Transparency & 0.622 & 0.291 & 2.137 & 0.205\\
\hline
VSUP - Pixel & -3.510 & 0.243 & -14.455 & 0.000\\
\hline
VSUP - Transparency & -3.726 & 0.257 & -14.485 & 0.000\\
\hline
Pixel - Transparency & -0.216 & 0.195 & -1.107 & 0.803\\
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
