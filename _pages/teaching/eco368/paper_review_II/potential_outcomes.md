---
layout: slide
title: ECO368 - Tutorial 4
description: Papers Review II
theme: white
transition: slide
permalink: /eco368/tutorial_5.html
---
<section data-markdown data-separator="^\r?\n----\r?\n" data-separator-vertical="^\r?\n--\r?\n">
<script type="text/template">



## Papers Review II
### ECO368 - Tutorial 5

![U of T Logo](u_of_t_crest.svg)

[Dario Toman](https://dariotoman.com/)

dario.toman@mail.utoronto.ca


----

## Differences in Differencs Recap

--

- Differences in Differences can be used in quasi-experimental settings to estimate average treatment effects.
- Using Differences in Differences, we are able to construct a counterfactual to treatment, under certain assumptions.
- In this way, we can account for selection-bias that may otherwise contaminate our results. 
--

![Parallel](img/parallel.jpeg)


--

### DiD Regression Framework 


`$$Y_{igt}= \alpha + \beta \text{ Treated}_{g}+ \gamma \text{ Post}_t + \delta \text{ Treated*Post}_{gt} + \varepsilon_{igt}$$`


- This equation takes values:
    - **Control, Pre:** $\alpha $
    - **Control, Post:** $\alpha + \gamma$
    - **Treated, Pre:** $\alpha + \beta$
    - **Treated, Post:** $\alpha + \beta + \gamma + \delta$
- The DiD estimate is then:
\begin{align} (&\text{Treated, Post }-\text{ Treated, Pre}) \\\\ -&(\text{Control, Post } - \text{ Control, Pre}) \\\\ =&\delta \end{align}

--

### Assumptions in Differences in Differences

- The Parallel Trends Assumption is that we assume that in the absence of treatment, the treated group would follow the same trend as the control group.
    - We effectively assume that the selection bias is constant, and that we can thus account for it.
    - This is **not testable**.
- Stable Unit of Treatment Value Assumption (SUTVA)
    - No Spillovers! People who are in the Treated group must not move to the Control Group - or vice-versa.  
- No Coinciding Treatments

----

## Akresh et. Al (2011)

----

- Akresh et al. study how two different shocks affect human capital in Rwanda.
    - Crop Failure
    - Civil War
- Outcome variable: **height z-scores** (Child stunting)

--

### Why Should we care?

- Exposure to shocks in-utero has strong effects on health and human capital outcomes.
    - Camacho (2008) finds that conflict-induced stress has negative effects on birth weight.
- These negative effects are persistent!
    - Fetal Origins Hypothesis: Barker posits that adult human capital is highly affected by fetal health
    - Almond (2006) find that in-utero exposure to the 1918 Spanish Flu reduces education, income, SES
    
--

### Identification Strategy

- Differences in Differences
    - Difference 1: Birth Location
    - Difference 2: Birth Cohort


### DiD Example : Akresh (2011)

![Akresh Graph](img/akresh_graph.png)

--

### DiD Example : Akresh (2011)

![Akresh Table](img/akresh_table.png)

----

### Questions?
 
(Reminder - I have OH after tutorial)

</script>
</section>