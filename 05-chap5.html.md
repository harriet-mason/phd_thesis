# Conclusion {#sec-conc}

This work presents a cohesive vision for the future of uncertainty visualisation. 
One that exists in parallel to the existing infrastructure of statistical graphics, a confidence interval counterpart to the line-up plot's statistical test.
We established the foundations of this vision by approaching the uncertainty visualisation problem from three separate angles: the philisophical goals of the field, the mathematical objects we are working with, and the human perception of uncertainty in visualisations.
All three approaches landed on the same conclusion: if uncertainty is the visualisation of distributions, uncertainty visualisation is the visualisation of samples.

## Contributions
The primary contributions of this research are

The philosophical foundations
- Connection of the disparate definitions of uncertainty and define what it means to visualise uncertainty as noise.

Mathematical approach
- Established a mathematical framework for standard visualisation that is built upon the the grammar of graphics.
- Defining a visualisation as a function actually enforces the requirements of several statistical properties, such as continuous mapping theorem.
- Using this approach, we then investigate the approaches that violate these mathematical properties, and therefore, are invalid uncertainty visualisations.

Software
- Designed software that is tied to these mathematical and philosophical foundations
- Through formalisation, we gain flexibility, as our software allows for exploratory data analysis of uncertainty visualisation.
- Won Di Cook award and John Chambers award.

Perceptual verification
- designed a testing approach that allows us to evaluate uncertainty as noise
- used the mathematical foundation to design plots with marginal changes, that allowed us to isolate the differences between plots and attribute improvements to specific design choices. 
- Provide empirical evidence that perceptual interference is required for a plot to convey signal that is different to it's deterministic counterpart.
- Additionally, we illustrated that statistically valid visual signal can only be achieved when we visualise a distribution as a "unit", a unit that, in most cases, can only be visualised as a sample


## Future work
There are several avenues one could take to improve upon this work.

- Software needs improvement: joint distributions, etc.
- Experiment design was only for colour. Would be good to be able to verify the signal suppression requirements for other aesthetics.
- Also could test which colour palettes do a better job. 
- Primary versus secondary aestetics
- Fundamental theory of visualisation. 
