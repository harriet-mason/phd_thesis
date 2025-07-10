# Software for Simple Uncertainty Visualisation {#sec-second-paper}

## Introduction
- Reiterate some points from previous chapter
- More focus on grammar of graphics

## Including uncertainty in The Grammar of Graphics
- Not immediately clear where uncertainty should fit in the grammar of graphics
*Get discussion from old paper*

## Existing tools for visualising uncertainty
- ggdist is the most obvious implementation of uncertainty in the grammar of graphics
  - takes the same approach as ggdibbler (i.e. takes a distribution as an input)
*Get discussion from mid milestone report*

## ???
*Check Journal of Computational and Graphical Statistics for general format*

## Future Work
- Different types of plots (e.g. scatter plot)
- Different data types for the uncertainty. Currently only have uncertainty in estimates, but could have uncertainty in location in a map for example.
- Alternative variations, e.g. bivariate map.
  - Could implement these methods across different plot types. e.g. what does the space transformation in the bivariate map look like when the x and y component are both spatial instead of coloured.
- Entirely new approaches
- Want to add dibble object so that it is automatic.
- Should include density objects as a "stat_identity" option for the sake of completeness.
