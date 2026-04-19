::: {.content-visible when-format="html"}

A thesis submitted for the degree of {{< meta degreetype >}} at Monash University, {{< meta affiliation >}}.

:::

# Copyright notice {-}






Produced on 20 April 2026.

© {{< meta author >}} (2026).






# Abstract {-}

Visualisation is a powerful tool in data analysis, as it allows us to learn from our data, identifying new insights or hypothesis that we would otherwise have been missed.
These insights are only possible thanks to the tools that allow us to render accurate and reliable representations of our data.
Unfortunately, despite the prevalence of random variables in statistical analysis, these powerful tools do not extend to the visualisation of estimates, as we are unable to incorporate uncertainty into our plots. 
Limiting our visualisations to point estimates restricts our ability to gain insights on uncertain data, which is especially problematic given their prevalence.
Working past this limitation has remained difficult, as data visualisation is a broad area, simultaneously touching several fields at once, including philosophy, mathematical statistics, and studies of human perception.

Properly addressing these issues requires a critical assessment of existing uncertainty visualisation approaches under each lens.
This is the work done by this thesis, which presents three original contributions.
The first contribution is a philosophical argument that untangles the current literature and provides guidance on what it means to make a "good" uncertainty visualisation.
The second contribution is both conceptual and practical, as it provides a mathematical formalisation of uncertainty visualisation, which is then used to create the R package `ggdibbler` which is a flexible uncertainty visualisation software that facilitates exploratory data analysis of random matrices.
The final contribution is a human study on the perception of uncertain plots, which evaluates uncertainty visualisations on their ability to align with the conclusions of classical hypothesis tests, and provides some guiding principles on the perception of uncertain plots.
These contributions allow us to visualise random variables with as much ease as we do normal data, assured by the knowledge that what we see is actually there.


# Declaration {-}
I hereby declare that this thesis contains no material which has been accepted for the award of any other degree or diploma at any university or equivalent institution and that, to the best of my knowledge and belief, this thesis contains no material previously published or written by another person, except where due reference is made in the text of the thesis.

This thesis includes three original papers, two  in peer reviewed journals and ?? submitted publications. The core theme of the thesis is ??. The ideas, development and writing up of all the papers in the thesis were the principal responsibility of myself, the student, working within the Department of Econometrics & Business Statistics under the supervision of ??

(The inclusion of co-authors reflects the fact that the work came from active collaboration between researchers and acknowledges input into team-based research.)

In the case of (??insert chapter numbers) my contribution to the work involved the following:

I have / have not renumbered sections of submitted or published papers in order to generate a consistent presentation within the thesis.

Student name:

Student signature:

Date:

I hereby certify that the above declaration correctly reflects the nature and extent of the student’s and co-authors’ contributions to this work. In instances where I am not the responsible author I have consulted with the responsible author to agree on the respective contributions of the authors.

Main Supervisor name:

Main Supervisor signature:

Date:


#### Reproducibility statement

This thesis is written using Quarto with renv [@renv] to create a reproducible environment. All materials (including the data sets and source files) required to reproduce this document can be found at the Github repository [`github.com/harriet-mason/phd_thesis`](https://github.com/harriet-mason/phd_thesis).

This work is licensed under a [Creative Commons  Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).


# Acknowledgements {-}
It takes a village to raise a child, and it took a small department to bring this thesis into existence. Here, I want to thank the people who made this work possible.

First, I want to thank my supervision team, who put up with my complete inability to stick to deadlines for almost 4 years. You have all forever shaped the way I think about statistics, software, research, and visualisation, and for that I am incredibly grateful. To Emi and Ursula, even though you were not supervisors for the entire duration of the project, some of your feedback in the early days of my PhD had a huge influence on my approach to research. To Susan, having someone on the supervision team who could understand my half formed ideas well enough to help me translate them into something other people could understand, was genuinely a lifesaver and I don't think I would have finished the first paper (let alone the entire PhD) without your help. To Sarah, your exuberant energy and openness to odd ideas is something that I sincerely hope has rubbed off on me as I try to embody that attitude for the rest of my career. To Di, I don't think I have words to express the level of gratitude I have towards you. Than you for taking me on as a research assistant, then honours student, and finally PhD student. It is not an overstatement to say I wouldn't even be in research were it not for you. These last 6 years inspired a level of joy and fulfilment in my work that I didn't think I would ever see in this lifetime.

Thank you to Rachel and Alison, for your help on the third paper. I had given up on the idea of doing an experiment, but your enthusiasm about the project, delightful company, and, most importantly, ability to do the parts of the research that I couldn't, allowed me to include it in my thesis. The experiment paper was easily the most fun of all the chapters.

Thank you to my fellow PhD students for always being good company in the office, particularly Sherry, Patrick, Heshani, Ze-yu, Floyd, Fillip, Shelly, Kris, Minh, Cash, Tina, Vis, Nimni, . In particular, thank you to Cynthia, Mitch, Jayani, Bets, and Janith, who occasionally ended up sucked into conversations with me that went on for so long my family called me to ask if I was dead.
Thank you to the NUMBATs research group for being my home while at Monash. In particular thank you to Michael and Kate for being willing listen to me complain almost as much as the other PhD students.

To Gael, thank you for for letting me into the program (despite me almost failing your class in my Bachelors).
Thank you to everyone at AEMO and the Zema scholarship for supporting my research (both financially and emotionally).
To my panel: Catherine, Jess, Michael, and David for your helpful feedback at my milestones that greatly contributed improved the work.

To Sophie, Kat, and Kris, sorry for complaining so much in the group chat. I hope this acknowledgement made it all worthwhile.
To Eliot, thank you for the eight years we have spent getting coffee and walking laps around Monash University. Conversations with you always brighten by day, and my supervisors can thank you for approximately 50% of my visits to campus. 

To my family, Mum, Dad, Grandma, Eloise, Ben, Alastair, Lauren, and Prudence, thank you for offering your homes when I travelled for conferences, participating in my pilot study despite having no idea what it is for, and remaining supportive for this annoyingly long degree.

Finally, thank you to my dog Bosco and partner Tom, without whom, I might have starved to death. I know these past four years have been almost as hard on you as they have been on me (almost), but I wouldn't have suffered through them with anyone else.


<!--
The following line is required to re-set page numbering after preliminary material in the pdf output. Do not remove
-->

\clearpage\pagenumbering{arabic}\setcounter{page}{1}
