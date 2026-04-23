# Appendix A — Supplementary Material for “Colour Blinded by the Noise” {#sec-appa}






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
![](A-appA_files/figure-html/tbl-confusion-numbers-1.png){fig-pos='H' width=100%}
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

`````{=html}
<table class="table" style="font-size: 10px; width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Selected </th>
   <th style="text-align:right;"> Correct </th>
   <th style="text-align:right;"> Total </th>
   <th style="text-align:right;"> Dots </th>
  </tr>
 </thead>
<tbody>
  <tr grouplength="10"><td colspan="4" style="border-bottom: 1px solid;"><strong></strong></td></tr>
<tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> No number visible </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 324 </td>
   <td style="text-align:right;"> 113 </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> No number visible </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 306 </td>
   <td style="text-align:right;"> 149 </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> No number visible </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 282 </td>
   <td style="text-align:right;"> 192 </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> No number visible </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 258 </td>
   <td style="text-align:right;"> 223 </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> No number visible </td>
   <td style="text-align:right;"> 8 </td>
   <td style="text-align:right;"> 251 </td>
   <td style="text-align:right;"> 267 </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> No number visible </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 228 </td>
   <td style="text-align:right;"> 213 </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> No number visible </td>
   <td style="text-align:right;"> 9 </td>
   <td style="text-align:right;"> 227 </td>
   <td style="text-align:right;"> 230 </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> No number visible </td>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 220 </td>
   <td style="text-align:right;"> 249 </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> No number visible </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 207 </td>
   <td style="text-align:right;"> 210 </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> No number visible </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 165 </td>
   <td style="text-align:right;"> 194 </td>
  </tr>
</tbody>
</table>

`````

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
![A heatmap showing the median duration accross each D, V, and plot type.](A-appA_files/figure-html/fig-duration-heatmap-1.png){#fig-duration-heatmap fig-pos='H' width=100%}
:::
:::

::: {.cell}

:::






## Demographic Analysis
The demographic analysis indicates no relationship between the demographic details and the proportion of correct responses. 






::: {.cell}
::: {.cell-output-display}
![Plots showing the overall distribution of correct answers from the participants, as well as the relationship betweeen the five demographic responses and the probability of correctly identifying the number in the stimuli.](A-appA_files/figure-html/demographics-1.png){fig-pos='H' width=100%}
:::
:::







## Additional model comparison results
The distance-based results as well as all pairwise comparisons, as mentioned in the main text.






::: {#tbl-v-trend1 .cell tbl-pos='H' tbl-cap='Results for Standard Deviation Trend by Plot Type at Distance = 1'}
::: {.cell-output-display}

`````{=html}
<table>
 <thead>
  <tr>
   <th style="text-align:left;"> plot_type </th>
   <th style="text-align:right;"> V.trend </th>
   <th style="text-align:right;"> SE </th>
   <th style="text-align:right;"> z.ratio </th>
   <th style="text-align:right;"> p.value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Choropleth </td>
   <td style="text-align:right;"> -0.026 </td>
   <td style="text-align:right;"> 0.056 </td>
   <td style="text-align:right;"> -0.460 </td>
   <td style="text-align:right;"> 0.646 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bivariate </td>
   <td style="text-align:right;"> -0.039 </td>
   <td style="text-align:right;"> 0.055 </td>
   <td style="text-align:right;"> -0.701 </td>
   <td style="text-align:right;"> 0.484 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> VSUP </td>
   <td style="text-align:right;"> -0.577 </td>
   <td style="text-align:right;"> 0.059 </td>
   <td style="text-align:right;"> -9.712 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pixel </td>
   <td style="text-align:right;"> -0.515 </td>
   <td style="text-align:right;"> 0.063 </td>
   <td style="text-align:right;"> -8.234 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Transparency </td>
   <td style="text-align:right;"> -0.538 </td>
   <td style="text-align:right;"> 0.066 </td>
   <td style="text-align:right;"> -8.216 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
</tbody>
</table>

`````

:::
:::

::: {#tbl-v-trend2 .cell tbl-pos='H' tbl-cap='Results for Standard Deviation Trend by Plot Type at Distance = 2'}
::: {.cell-output-display}

\begin{tabular}{l|r|r|r|r}
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


:::
:::

::: {#tbl-v-trend3 .cell tbl-pos='H' tbl-cap='Results for Standard Deviation Trend by Plot Type at Distance = 3'}
::: {.cell-output-display}

`````{=html}
<table>
 <thead>
  <tr>
   <th style="text-align:left;"> plot_type </th>
   <th style="text-align:right;"> V.trend </th>
   <th style="text-align:right;"> SE </th>
   <th style="text-align:right;"> z.ratio </th>
   <th style="text-align:right;"> p.value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Choropleth </td>
   <td style="text-align:right;"> 0.245 </td>
   <td style="text-align:right;"> 0.190 </td>
   <td style="text-align:right;"> 1.288 </td>
   <td style="text-align:right;"> 0.198 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bivariate </td>
   <td style="text-align:right;"> -0.045 </td>
   <td style="text-align:right;"> 0.160 </td>
   <td style="text-align:right;"> -0.278 </td>
   <td style="text-align:right;"> 0.781 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> VSUP </td>
   <td style="text-align:right;"> -3.121 </td>
   <td style="text-align:right;"> 0.139 </td>
   <td style="text-align:right;"> -22.458 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pixel </td>
   <td style="text-align:right;"> -0.762 </td>
   <td style="text-align:right;"> 0.077 </td>
   <td style="text-align:right;"> -9.870 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Transparency </td>
   <td style="text-align:right;"> -0.624 </td>
   <td style="text-align:right;"> 0.092 </td>
   <td style="text-align:right;"> -6.753 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
</tbody>
</table>

`````

:::
:::

::: {#tbl-v-trend4 .cell tbl-pos='H' tbl-cap='Results for Standard Deviation Trend by Plot Type at Distance = 4'}
::: {.cell-output-display}

`````{=html}
<table>
 <thead>
  <tr>
   <th style="text-align:left;"> plot_type </th>
   <th style="text-align:right;"> V.trend </th>
   <th style="text-align:right;"> SE </th>
   <th style="text-align:right;"> z.ratio </th>
   <th style="text-align:right;"> p.value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Choropleth </td>
   <td style="text-align:right;"> 0.381 </td>
   <td style="text-align:right;"> 0.290 </td>
   <td style="text-align:right;"> 1.316 </td>
   <td style="text-align:right;"> 0.188 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bivariate </td>
   <td style="text-align:right;"> -0.047 </td>
   <td style="text-align:right;"> 0.245 </td>
   <td style="text-align:right;"> -0.193 </td>
   <td style="text-align:right;"> 0.847 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> VSUP </td>
   <td style="text-align:right;"> -4.394 </td>
   <td style="text-align:right;"> 0.209 </td>
   <td style="text-align:right;"> -21.040 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pixel </td>
   <td style="text-align:right;"> -0.886 </td>
   <td style="text-align:right;"> 0.124 </td>
   <td style="text-align:right;"> -7.154 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Transparency </td>
   <td style="text-align:right;"> -0.667 </td>
   <td style="text-align:right;"> 0.149 </td>
   <td style="text-align:right;"> -4.475 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
</tbody>
</table>

`````

:::
:::

::: {#tbl-basicmodel1 .cell tbl-cap='Results for Standard Deviation Trend by Plot Type at Distance = 1'}
::: {.cell-output-display}

`````{=html}
<table>
 <thead>
  <tr>
   <th style="text-align:left;"> contrast </th>
   <th style="text-align:right;"> estimate </th>
   <th style="text-align:right;"> SE </th>
   <th style="text-align:right;"> z.ratio </th>
   <th style="text-align:right;"> p.value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Choropleth - Bivariate </td>
   <td style="text-align:right;"> 0.013 </td>
   <td style="text-align:right;"> 0.078 </td>
   <td style="text-align:right;"> 0.166 </td>
   <td style="text-align:right;"> 1.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Choropleth - VSUP </td>
   <td style="text-align:right;"> 0.551 </td>
   <td style="text-align:right;"> 0.081 </td>
   <td style="text-align:right;"> 6.763 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Choropleth - Pixel </td>
   <td style="text-align:right;"> 0.490 </td>
   <td style="text-align:right;"> 0.084 </td>
   <td style="text-align:right;"> 5.847 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Choropleth - Transparency </td>
   <td style="text-align:right;"> 0.513 </td>
   <td style="text-align:right;"> 0.086 </td>
   <td style="text-align:right;"> 5.965 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bivariate - VSUP </td>
   <td style="text-align:right;"> 0.538 </td>
   <td style="text-align:right;"> 0.081 </td>
   <td style="text-align:right;"> 6.639 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bivariate - Pixel </td>
   <td style="text-align:right;"> 0.476 </td>
   <td style="text-align:right;"> 0.083 </td>
   <td style="text-align:right;"> 5.715 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bivariate - Transparency </td>
   <td style="text-align:right;"> 0.500 </td>
   <td style="text-align:right;"> 0.086 </td>
   <td style="text-align:right;"> 5.835 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> VSUP - Pixel </td>
   <td style="text-align:right;"> -0.062 </td>
   <td style="text-align:right;"> 0.086 </td>
   <td style="text-align:right;"> -0.716 </td>
   <td style="text-align:right;"> 0.953 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> VSUP - Transparency </td>
   <td style="text-align:right;"> -0.038 </td>
   <td style="text-align:right;"> 0.088 </td>
   <td style="text-align:right;"> -0.435 </td>
   <td style="text-align:right;"> 0.993 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pixel - Transparency </td>
   <td style="text-align:right;"> 0.023 </td>
   <td style="text-align:right;"> 0.090 </td>
   <td style="text-align:right;"> 0.257 </td>
   <td style="text-align:right;"> 0.999 </td>
  </tr>
</tbody>
</table>

`````

:::
:::

::: {#tbl-basicmodel2 .cell tbl-cap='Results for Standard Deviation Trend by Plot Type at Distance = 2'}
::: {.cell-output-display}

`````{=html}
<table>
 <thead>
  <tr>
   <th style="text-align:left;"> contrast </th>
   <th style="text-align:right;"> estimate </th>
   <th style="text-align:right;"> SE </th>
   <th style="text-align:right;"> z.ratio </th>
   <th style="text-align:right;"> p.value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Choropleth - Bivariate </td>
   <td style="text-align:right;"> 0.153 </td>
   <td style="text-align:right;"> 0.128 </td>
   <td style="text-align:right;"> 1.190 </td>
   <td style="text-align:right;"> 0.757 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Choropleth - VSUP </td>
   <td style="text-align:right;"> 1.960 </td>
   <td style="text-align:right;"> 0.125 </td>
   <td style="text-align:right;"> 15.674 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Choropleth - Pixel </td>
   <td style="text-align:right;"> 0.749 </td>
   <td style="text-align:right;"> 0.109 </td>
   <td style="text-align:right;"> 6.897 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Choropleth - Transparency </td>
   <td style="text-align:right;"> 0.693 </td>
   <td style="text-align:right;"> 0.111 </td>
   <td style="text-align:right;"> 6.265 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bivariate - VSUP </td>
   <td style="text-align:right;"> 1.807 </td>
   <td style="text-align:right;"> 0.113 </td>
   <td style="text-align:right;"> 15.974 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bivariate - Pixel </td>
   <td style="text-align:right;"> 0.596 </td>
   <td style="text-align:right;"> 0.095 </td>
   <td style="text-align:right;"> 6.289 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bivariate - Transparency </td>
   <td style="text-align:right;"> 0.540 </td>
   <td style="text-align:right;"> 0.097 </td>
   <td style="text-align:right;"> 5.563 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> VSUP - Pixel </td>
   <td style="text-align:right;"> -1.211 </td>
   <td style="text-align:right;"> 0.090 </td>
   <td style="text-align:right;"> -13.515 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> VSUP - Transparency </td>
   <td style="text-align:right;"> -1.267 </td>
   <td style="text-align:right;"> 0.092 </td>
   <td style="text-align:right;"> -13.766 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pixel - Transparency </td>
   <td style="text-align:right;"> -0.056 </td>
   <td style="text-align:right;"> 0.069 </td>
   <td style="text-align:right;"> -0.821 </td>
   <td style="text-align:right;"> 0.924 </td>
  </tr>
</tbody>
</table>

`````

:::
:::

::: {#tbl-basicmodel3 .cell tbl-cap='Results for Standard Deviation Trend by Plot Type at Distance = 3'}
::: {.cell-output-display}

`````{=html}
<table>
 <thead>
  <tr>
   <th style="text-align:left;"> contrast </th>
   <th style="text-align:right;"> estimate </th>
   <th style="text-align:right;"> SE </th>
   <th style="text-align:right;"> z.ratio </th>
   <th style="text-align:right;"> p.value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Choropleth - Bivariate </td>
   <td style="text-align:right;"> 0.292 </td>
   <td style="text-align:right;"> 0.253 </td>
   <td style="text-align:right;"> 1.157 </td>
   <td style="text-align:right;"> 0.776 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Choropleth - VSUP </td>
   <td style="text-align:right;"> 3.369 </td>
   <td style="text-align:right;"> 0.238 </td>
   <td style="text-align:right;"> 14.130 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Choropleth - Pixel </td>
   <td style="text-align:right;"> 1.009 </td>
   <td style="text-align:right;"> 0.208 </td>
   <td style="text-align:right;"> 4.843 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Choropleth - Transparency </td>
   <td style="text-align:right;"> 0.873 </td>
   <td style="text-align:right;"> 0.215 </td>
   <td style="text-align:right;"> 4.068 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bivariate - VSUP </td>
   <td style="text-align:right;"> 3.076 </td>
   <td style="text-align:right;"> 0.214 </td>
   <td style="text-align:right;"> 14.361 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bivariate - Pixel </td>
   <td style="text-align:right;"> 0.716 </td>
   <td style="text-align:right;"> 0.180 </td>
   <td style="text-align:right;"> 3.972 </td>
   <td style="text-align:right;"> 0.001 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bivariate - Transparency </td>
   <td style="text-align:right;"> 0.580 </td>
   <td style="text-align:right;"> 0.188 </td>
   <td style="text-align:right;"> 3.094 </td>
   <td style="text-align:right;"> 0.017 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> VSUP - Pixel </td>
   <td style="text-align:right;"> -2.360 </td>
   <td style="text-align:right;"> 0.159 </td>
   <td style="text-align:right;"> -14.864 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> VSUP - Transparency </td>
   <td style="text-align:right;"> -2.496 </td>
   <td style="text-align:right;"> 0.167 </td>
   <td style="text-align:right;"> -14.939 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pixel - Transparency </td>
   <td style="text-align:right;"> -0.136 </td>
   <td style="text-align:right;"> 0.121 </td>
   <td style="text-align:right;"> -1.124 </td>
   <td style="text-align:right;"> 0.794 </td>
  </tr>
</tbody>
</table>

`````

:::
:::

::: {#tbl-basicmodel4 .cell tbl-cap='Results for Standard Deviation Trend by Plot Type at Distance = 4'}
::: {.cell-output-display}

`````{=html}
<table>
 <thead>
  <tr>
   <th style="text-align:left;"> contrast </th>
   <th style="text-align:right;"> estimate </th>
   <th style="text-align:right;"> SE </th>
   <th style="text-align:right;"> z.ratio </th>
   <th style="text-align:right;"> p.value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Choropleth - Bivariate </td>
   <td style="text-align:right;"> 0.432 </td>
   <td style="text-align:right;"> 0.385 </td>
   <td style="text-align:right;"> 1.122 </td>
   <td style="text-align:right;"> 0.795 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Choropleth - VSUP </td>
   <td style="text-align:right;"> 4.778 </td>
   <td style="text-align:right;"> 0.361 </td>
   <td style="text-align:right;"> 13.238 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Choropleth - Pixel </td>
   <td style="text-align:right;"> 1.268 </td>
   <td style="text-align:right;"> 0.319 </td>
   <td style="text-align:right;"> 3.975 </td>
   <td style="text-align:right;"> 0.001 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Choropleth - Transparency </td>
   <td style="text-align:right;"> 1.052 </td>
   <td style="text-align:right;"> 0.330 </td>
   <td style="text-align:right;"> 3.191 </td>
   <td style="text-align:right;"> 0.012 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bivariate - VSUP </td>
   <td style="text-align:right;"> 4.346 </td>
   <td style="text-align:right;"> 0.325 </td>
   <td style="text-align:right;"> 13.357 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bivariate - Pixel </td>
   <td style="text-align:right;"> 0.836 </td>
   <td style="text-align:right;"> 0.278 </td>
   <td style="text-align:right;"> 3.003 </td>
   <td style="text-align:right;"> 0.022 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bivariate - Transparency </td>
   <td style="text-align:right;"> 0.620 </td>
   <td style="text-align:right;"> 0.291 </td>
   <td style="text-align:right;"> 2.133 </td>
   <td style="text-align:right;"> 0.206 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> VSUP - Pixel </td>
   <td style="text-align:right;"> -3.509 </td>
   <td style="text-align:right;"> 0.243 </td>
   <td style="text-align:right;"> -14.453 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> VSUP - Transparency </td>
   <td style="text-align:right;"> -3.725 </td>
   <td style="text-align:right;"> 0.257 </td>
   <td style="text-align:right;"> -14.486 </td>
   <td style="text-align:right;"> 0.000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pixel - Transparency </td>
   <td style="text-align:right;"> -0.216 </td>
   <td style="text-align:right;"> 0.195 </td>
   <td style="text-align:right;"> -1.107 </td>
   <td style="text-align:right;"> 0.803 </td>
  </tr>
</tbody>
</table>

`````

:::
:::






<!--
## Lag effects






::: {.cell}
::: {.cell-output-display}
![](A-appA_files/figure-html/unnamed-chunk-1-1.png){width=768}
:::
:::






## Also check for tiredness






::: {.cell}

:::





-->
