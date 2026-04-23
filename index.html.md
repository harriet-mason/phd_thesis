::: {.content-visible when-format="html"}

A thesis submitted for the degree of {{< meta degreetype >}} at Monash University, {{< meta affiliation >}}.

:::

# Copyright notice {-}






Produced on 24 April 2026.

© {{< meta author >}} (2026).






# Abstract {-}

Visualisation is a powerful tool in data analysis, as it allows us to learn from our data, identifying new insights or hypotheses that we would otherwise have missed.
These insights are only possible thanks to the tools that allow us to render accurate and reliable representations of our data.
Unfortunately, despite the prevalence of random variables in statistical analysis, these powerful tools do not extend to the visualisation of estimates, as we are unable to incorporate uncertainty into our plots. 
Limiting our visualisations to point estimates restricts our ability to gain insights into uncertain data, which is especially problematic given their prevalence.
Working past this limitation has remained difficult, as data visualisation is a broad area, simultaneously touching several fields at once, including philosophy, mathematical statistics, and studies of human perception.

Properly addressing these issues requires a critical assessment of existing uncertainty visualisation approaches under each lens.
This is the work done by this thesis, which presents three original contributions.
The first contribution is a philosophical argument that untangles the current literature and provides guidance on what it means to make a "good" uncertainty visualisation.
The second contribution is both conceptual and practical, as it provides a mathematical formalisation of uncertainty visualisation, which is then used to create the R package `ggdibbler`, which is a flexible uncertainty visualisation software that facilitates exploratory data analysis of random matrices.
The final contribution is a human study on the perception of uncertain plots, which evaluates uncertainty visualisations on their ability to align with the conclusions of classical hypothesis tests, and provides some guiding principles on the perception of uncertain plots.
These contributions allow us to visualise random variables with as much ease as we do normal data, assured by the knowledge that what we see is actually there.


# Declaration {-}
I hereby declare that this thesis contains no material which has been accepted for the award of any other degree or diploma at any university or equivalent institution and that, to the best of my knowledge and belief, this thesis contains no material previously published or written by another person, except where due reference is made in the text of the thesis.

This thesis includes three research articles, which are at different stages of publication. @sec-first-paper has been submitted to Annual Reviews of Statistics and Its Applications as an invited contribution. @sec-second-paper is being prepared for submission to the Journal of Computational and Graphical Statistics. @sec-third-paper has been submitted to IEEE VIS 2026. The core theme of this thesis is "visual communication of uncertain data". The ideas, development, and writing up of all the papers in the thesis were the principal responsibility of myself, the student, working within the Department of Econometrics & Business Statistics under the supervision of Professor Dianne Cook, Dr Sarah Goodwin, and Dr Susan VanderPlas (University of Nebraska-Lincoln). @sec-first-paper was also a collaboration with Dr Emi Tanaka, and @sec-third-paper was a collaboration with Dr Rachel Rogers (University of Technology Sydney) and Dr Alison Kleffner (Creighton University). In the case of @sec-first-paper, @sec-second-paper, and @sec-third-paper, my contributions are detailed in the table below.

(The inclusion of co-authors reflects the fact that the work came from active collaboration between researchers and acknowledges input into team-based research.)






::: {.cell}

:::






::: {.content-visible when-format="html"}






::: {.cell}
::: {.cell-output-display}

`````{=html}
<table>
 <thead>
  <tr>
   <th style="text-align:right;text-align: left;"> Thesis chapter </th>
   <th style="text-align:left;text-align: left;"> Publication title </th>
   <th style="text-align:left;text-align: left;"> Status </th>
   <th style="text-align:left;text-align: left;"> Nature and % of student contribution </th>
   <th style="text-align:left;text-align: left;"> Nature and % of coauthors' contribution </th>
   <th style="text-align:left;text-align: left;"> Coauthors are Monash students </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:left;"> The Noisy Work of Uncertainty Visualisation </td>
   <td style="text-align:left;"> Submitted to Annual Reviews of Statistics and Its Applications </td>
   <td style="text-align:left;"> Concept, writing, editing: 80% </td>
   <td style="text-align:left;"> Dianne Cook: 10%; Sarah Goodwin: 5%; Emi Tanaka: 2.5%; Susan Vanderplas: 2.5% </td>
   <td style="text-align:left;"> No </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:left;"> A Mathematical Framework and Software Implementation for Uncertainty Visualisation </td>
   <td style="text-align:left;"> Prepared for submission to Journal of Computational and Graphical Statistics </td>
   <td style="text-align:left;"> Concept, software design and implementation, writing, editing: 80% </td>
   <td style="text-align:left;"> Dianne Cook: 10%; Sarah Goodwin: 5%; Susan Vanderplas: 5% </td>
   <td style="text-align:left;"> No </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:left;"> Colour Blinded by the Noise </td>
   <td style="text-align:left;"> Submitted to IEEE VIS 2026 </td>
   <td style="text-align:left;"> Concept, experiment design and implementation, analysis, writing, editing: 75% </td>
   <td style="text-align:left;"> Rachel Rogers: 10%; Alison Kleffner: 10%; Dianne Cook: 5% </td>
   <td style="text-align:left;"> No </td>
  </tr>
</tbody>
</table>

`````

:::
:::






:::

::: {.content-visible when-format="pdf"}






::: {.cell}
::: {.cell-output-display}
\begingroup\fontsize{10}{12}\selectfont

\resizebox{\ifdim\width>\linewidth\linewidth\else\width\fi}{!}{
\begin{tabu} to \linewidth {>{\raggedleft\arraybackslash}p{1.2cm}>{\raggedright\arraybackslash}p{2.6cm}>{\raggedright}X>{\raggedright\arraybackslash}p{2.6cm}>{\raggedright\arraybackslash}p{2.6cm}>{\raggedright\arraybackslash}p{2.6cm}}
\toprule
\multicolumn{1}{>{\raggedright\arraybackslash}p{1.2cm}}{\textbf{Thesis chapter}} & \multicolumn{1}{>{\raggedright\arraybackslash}p{2.6cm}}{\textbf{Publication title}} & \multicolumn{1}{l}{\textbf{Status}} & \multicolumn{1}{>{\raggedright\arraybackslash}p{2.6cm}}{\textbf{Nature and \% of student contribution}} & \multicolumn{1}{>{\raggedright\arraybackslash}p{2.6cm}}{\textbf{Nature and \% of coauthors' contribution}} & \multicolumn{1}{>{\raggedright\arraybackslash}p{2.6cm}}{\textbf{Coauthors are Monash students}}\\
\midrule
2 & The Noisy Work of Uncertainty Visualisation & Submitted to Annual Reviews of Statistics and Its Applications & Concept, writing, editing: 80\% & Dianne Cook: 10\%; Sarah Goodwin: 5\%; Emi Tanaka: 2.5\%; Susan Vanderplas: 2.5\% & No\\
3 & A Mathematical Framework and Software Implementation for Uncertainty Visualisation & Prepared for submission to Journal of Computational and Graphical Statistics & Concept, software design and implementation, writing, editing: 80\% & Dianne Cook: 10\%; Sarah Goodwin: 5\%; Susan Vanderplas: 5\% & No\\
4 & Colour Blinded by the Noise & Submitted to IEEE VIS 2026 & Concept, experiment design and implementation, analysis, writing, editing: 75\% & Rachel Rogers: 10\%; Alison Kleffner: 10\%; Dianne Cook: 5\% & No\\
\bottomrule
\end{tabu}}
\endgroup{}


:::
:::






:::



I have not renumbered sections of submitted or published papers in order to generate a consistent presentation within the thesis.

Student name: Harriet Mason

Student signature:

Date:

I hereby certify that the above declaration correctly reflects the nature and extent of the student’s and co-authors’ contributions to this work. In instances where I am not the responsible author, I have consulted with the responsible author to agree on the respective contributions of the authors.

Main Supervisor name: Dianne Cook

Main Supervisor signature:

Date:


#### Reproducibility statement
All materials associated with this thesis are openly available for transparency and following reproducible practice. The thesis is written using Quarto [@quarto] and is available online at [`harriet-mason.github.io/phd_thesis/`](https://harriet-mason.github.io/phd_thesis/).
All materials (including the data sets and source files) required to reproduce this document can be found at the Github repository [`github.com/harriet-mason/phd_thesis`](https://github.com/harriet-mason/phd_thesis).

This work is licensed under a [Creative Commons  Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).


# Acknowledgements {-}
First, I want to thank my supervision team, who put up with my complete inability to stick to deadlines for almost 4 years. You have all forever shaped the way I think about statistics, software, research, and visualisation, and for that I am incredibly grateful. To Emi and Ursula, even you were not supervisors for the entire duration of the project, your excellent feedback in the early days of my PhD had a significant influence on my approach to research, for which I am very grateful. To Susan, having someone on the supervision team who could understand my half-formed ideas well enough to help me translate them into something other people could understand was genuinely a lifesaver, and I don't think I would have finished the first paper (let alone the entire PhD) without your help. To Sarah, your exuberant energy and openness to unconventional ideas are qualities I truly admire, and I hope to carry that spirit with me throughout my career. To Di, I don't think I have words to express the level of gratitude I have towards you. Thank you for taking me on as a research assistant, then as an honours student, and finally as a PhD student. It is not an overstatement to say I wouldn't even be in research were it not for you. These last 6 years have inspired a level of joy and fulfilment in my work that I didn't think I would ever see in this lifetime, and for that you have my eternal gratitude.

Thank you to Rachel and Alison for your help on the third paper. I had given up on the idea of doing an experiment, but your enthusiasm about the project, delightful company, and, most importantly, ability to do the parts of the research that I couldn't, allowed me to include it in my thesis. 

Thank you to my fellow PhD students for always being good company in the office, particularly Sherry, Patrick, Heshani, Ze-yu, Floyd, Fillip, Shelly, Kris, Minh, Cash, Tina, Maliny and Vis. An extra special thank you to Cynthia, Mitch, Jayani, Bets, and Janith, who I occasionally sucked into conversations that went on for so long that my housemates would call to check if I had died.
Thank you to the NUMBATs research group for being my home while at Monash. In particular, thank you to Michael, Hannah, and Kate for being as easy to talk to as the other PhD students. 

To Gael, thank you for letting me into the program (despite my almost failing your class in my Bachelors), and Catherine, David, and Xibin for taking over the program after Gael retired.
To my panel: Catherine, Jess, Michael, and David, thank you for the helpful feedback at my milestones that greatly improved the work.
Thank you to everyone at AEMO and the Zema scholarship fund for supporting my research.

To my friends, Sophie, Kat, and Kris, thank you for letting me complain so much in the group chat. And to Chloe, thank you for letting me complain on our walks. I hope this acknowledgement made all my complaining worthwhile.
To Eliot, thank you for the eight years we have spent getting coffee and walking laps around Monash University. Conversations with you always brighten my day, and my supervisors can thank you for approximately 50% of my visits to campus. 

To my family, Mum, Dad, Grandma, Eloise, Ben, Alastair, Lauren, and Prudence, thank you for offering your homes when I travelled for conferences, participating in my pilot study despite having no idea what it was for, and remaining supportive for this very long degree.
To my dog, Bosco, thank you giving me your company while I worked and for being a constant source of joy in my life. 
Finally, to my partner Tom, thank you for answering my questions on maths definitions (even at three in the morning), helping me bake for the annual NUMBATs group bake off (even at four in the morning), and continuing to give your love and support for the past few months as my entire life was sucked into this thesis.

To all my friends, family, and loved ones, I know these past four years have been almost as hard on you as they have been on me (*almost*), but I wouldn't have gone through them with anyone else.


<!--
The following line is required to re-set page numbering after preliminary material in the pdf output. Do not remove
-->

\clearpage\pagenumbering{arabic}\setcounter{page}{1}
