---
title: "Visualising Uncertainty: Conceptual Framework, Software, and Perception"
subtitle: "Response to examiners"
author: "Harriet Mason"
format: 
  pdf:
    toc: false
    number-sections: false
    classoption: [notitlepage]
filters:
  - highlight-text
---

## Summary

Thank you to the examiners for their thoughtful comments and feedback. Below is a point by point response to the examiners comments. We have done our best to implement all the suggested changes. The original comment is in normal font and our response [has a green highlight]{bg="#9FE2BF"}.


## Examiner A: Prof Mine Çetinkaya-Rundel

### Chapter 2
p.8: Uncertainty as a “by-product” of inference “Since uncertainty is nonexistent in descriptive statistics, it is clear that uncertainty is a by-product of inference: uncertainty is the noise that is both inseparable from our inference and meaningless without it.”  This sentence suggests that inference (or inferential goals) causes uncertainty. However, uncertainty is the reason we need statistical inference tools; otherwise, we would make inference (for a population) based solely on descriptive statistics (for an observed sample from that population). I would recommend either justifying this causal claim with this specific causal direction, or using a term other than “by-product” to remove the direction of causality between them. 

[Yes, we were trying to say that inference causes uncertainty in this paragraph. We have rephrased this section to make the causal relationship more explicit and also give it a more thorough explanation.]{bg="#9FE2BF"}.

p.8: mtcars is not in ggplot2; it’s in the datasets package, which is in base R. 

[Fixed.]{bg="#9FE2BF"}.

p.9, Fig. 2.1: For the S plots, it might be worth explicitly saying that these are county boundaries and it’s not a tile plot / heatmap.

[No changes because the map is already explicitly referred to as a "choropleth map of Iowa counties" in both the body of the text, and the caption.]{bg="#9FE2BF"}


p.10: “central value has been replaced with an uncertainty statistic” Do you mean “the variable shown” instead of the central value? “Central value” sounds like a single data point, at the center of the data, was replaced. 

[Rephrased the sentence to make it clear we changed the visualisation, not the underlying distribution.]{bg="#9FE2BF"}

p.10: “Thee interpretation” = “The interpretation”. 

[The section was rephrased, and this error was fixed.]{bg="#9FE2BF"}

p.11, Fig. 2.2: I don’t understand what is shown in G plots. If this is the variance of the treatment effect, then what was in Fig. 1.1? The mean of the treatment effect? Or something else? Back on p.9 you said “central value of five different simulated distributions” for G plots — is central = mean here? If so, I recommend saying so, and also labelling the axes in Fig. 2.1 to explicitly indicate it as well. Then, what’s in Fig. 2.2 won’t be confusing. 

[We implemented both changes. We explicitly called it a mean in the text and changed the axis label of figure 1.1]{bg="#9FE2BF"}

p.11: “subconscious disagreement” I think it’s just “disagreement” — why “subconscious”? 

[Change to “unrecognised disgareeement”. There is disagreement but it is seldom acknowledged by authors in the field. ]{bg="#9FE2BF"}

p.24: Standards for experimental practice: The paragraph starting with “Experimental practices on uncertainty visualisation need standards.” — I totally agree that “[s]ome existing evaluation experiments treat uncertainty as a signal, while others treat uncertainty as noise”, but I don’t follow how the recommendation that researchers ensure “that when they identify the motivation behind their visualisation technique, their evaluation methods align with the stated goals of the paper” addresses that concern. The original concern is about consistency between researchers, but the end of the paragraph seems to be about consistency of the stated goal and the presented results of a given study.

[Good point. We rephrased the section and added a sentence to signpost the shift from conflict between studies to conflict within studies.]{bg="#9FE2BF"}

### Chapter 3

Figure 3.3: There are typos in the sketch — “Bernoulli” should have two Ls. 

[Fixed]{bg="#9FE2BF"}

Figure 3.5: I’m having a hard time truly grasping what I’m seeing, especially in (c) and (d). And maybe that’s the point of this figure. But still, I would have appreciated a bit more guidance on how to read them. 

[The caption of Figure 3.5 and the discussion in the body of the text have been updated and are now more explicit in what the figure shows and how it should be read.]{bg="#9FE2BF"}

Figure 3.8: I don’t agree with “transparency works well for text” — or maybe “well” should be better defined here. The transparency plot makes me feel a bit dizzy, so I wouldn’t consider it a great visualisation. That being said, I agree that it’s better than dodging. Just articulating a “works better because …” could go a long way here.  

[We have edited the text and figure caption to clarify it is preferred because it maintains the link between uncertainty and reading difficulty.]{bg="#9FE2BF"}

Figure 3.9: Since the caption says it uses code similar to ggplot2, it would be worthwhile to share the code. 

[Sharing the code for all six plots in the paper would take up far too much space, however, we did add in an example that compares the `ggdibbler` and `ggplot2` code for a pie chart.]{bg="#9FE2BF"}

## Examiner B: Prof Alan M MacEachren

### Chapter 2
I found the key contention that signal suppression is the most important goal for uncertainty visualization to be generally well supported. My initial reaction on reading this chapter was that the contention was overstated, that some research and practitioners will argue that there are situations in which allowing the reader to see both the data and its uncertainty will be useful. But in Chapter 3 (Paper 2), there is an acknowledgement that such situations exist, but the representations produced for them should not be labelled as uncertainty visualization. Thus, my only suggestion for this chapter is that the author may want to consider qualifying the point in paper one rather than leaving this to only appear in paper two. For the dissertation as a whole, the current presentation is fine, but for those who may read just one publication without the other, it would be useful to clarify in both papers. 

[We agree. We tried to make that argument in chapter 2 section 2.3.2.2 - “What is an uncertainty visualisation then?” but it wasn't very clear. We have rephrased the final paragraph of this section to try and make this point unambiguous.]{bg="#9FE2BF"}

p. 5. One small quibble is that the term “geoscience data” is usually used when the focus is on earth science/geology data. The broader term that fits with cartography’s attention to uncertainty is “geographic data” or “geospatial data”. 

[Done]{bg="#9FE2BF"}

p. 10 typo (extra word ?) – “the approach allows us to can glean new information” 

[Fixed]{bg="#9FE2BF"}

p. 16. Figure 2.4: In relation to this figure, the text says “you can see that the two plots have a different scale”. But, I cannot figure out what is different about the “scales”. If “scales” refers to the 4x8 legends below the maps, there seems to be zero difference. If “scales” refers to something else, this needs to be explained and the “difference” that is being referred to needs to be articulated more clearly.

[Thank you, this was a mistake we missed. The numbers in the scale should be different. We fixed this error so the scales are now correct. ]{bg="#9FE2BF"}

p 17, paragraph 2. It seems contradictory to say that EDA and CDA are along a continuum, then say that EDA and CDA “…are, philosophically speaking, perpendicular to one another.” It cannot be both.  

[Good point. We updated the paragraph to specify that for a set of hypothesis we are typically doing some combination of EDA and CDA (i.e. the continuum framing) but for any individual hypothesis, we cannot simultaneously perform EDA and CDA.]{bg="#9FE2BF"}

p. 18 In 2.3.4, the reference to “geoscience’s pixel-maps” is (as above) not the best term since “geoscience” typically refers to earth science and choropleth maps (which depict data for enumeration units such as counties or states) are seldom used in the earth sciences. As above, I suggest using a more accurate qualifier (cartographic, geographic, or geospatial). 

[We ended up cutting this section in the revision process.]{bg="#9FE2BF"}

P 18. Should this sentence “Figure 2.3 shows the six examples introduced in Figure 2.1, shown as distributions.” instead say “Figure 2.5 shows the six examples introduced in Figure 2.1, shown as distributions.” 

[Fixed.]{bg="#9FE2BF"}

p. 19: MacEachren should have a capital “E”, as it is shown elsewhere. 

[Fixed]{bg="#9FE2BF"}

p. 19, I think that the left parenthesis needs to be prior to “Tierney” rather than prior to “2” in: “the naniar package Tierney & Cook (2023)” 

[Fixed]{bg="#9FE2BF"}

### Chapter 3
p. 30: In the explanation for “G”, I believe that “where is the geometry function that maps each” should be “where E is the geometry function that maps each” 

[Fixed]{bg="#9FE2BF"}

### Chapter 4

p. 57. Again, I question the use of the term “geoscience” here since it does not typically include choropleth mapping, which is the kind of map settled on for empirical analysis in this chapter. Perhaps say “of geospatial data” or “geospatial applications” 

[Done. Changed to geography]{bg="#9FE2BF"}

p. 63. It would help to explain how all plot sizes can be standardised when it was impossible to control the screen size or resolution of the display that each participant used. 

[Good point. We meant that the image was not generated in the Shiny app, and instead had a set resolution, but this would not be consistent across screen sizes or display resolutions. We have removed this sentence.]{bg="#9FE2BF"}

p. 63. It would be useful to explain the pros and cons of allowing participants to revisit the previous plot. There is quite a bit of prior research related to experimental methods that addresses the pros and cons of allowing or not allowing participants to go back to prior answers and change them. Some of the work could be cited to support the choice of allowing participants to reconsider their responses. 

[The purpose of the back button was largely because of the automatic advancement, rather than for allowing participants to reconsider their response. We changed the sentence to mention the method was automatic advancement with a back button, which was the recommended approach in the literature for speed and engagement reasons, along with a citation. Other discussions we could find on allowing a back button were for screening questions, but we did not have screening questions inside the survey, so they did not seem relevant.  Unfortunately, we were unable to include a detailed pro and con discussion as we were already at the page limit of the IEEE VIS submission. ]{bg="#9FE2BF"}

p. 76-77, Section 4.6. One limitation that is not mentioned, but I feel should be (given that the test case was choropleth maps), is that the main objective of creating choropleth maps is not to allow readers to extract values from enumeration units (or cause them to have trouble doing so if the values are uncertain). It is to support spatial pattern identification across enumeration units. Thus, a future research topic to add is to explore the impact of the signal suppression strategy for this kind of pattern ID map reading objective.  

[We now explicitly mention this limitation at the end of the section with the shape tracing as a possible avenue to alleviate this problem.]{bg="#9FE2BF"}
