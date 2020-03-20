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

----

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

--

![Akresh Table](img/akresh_t2.png)

--

![Akresh Table](img/akresh_t3.png)

--

![Akresh Table](img/akresh_table.png)

--

### Assessing the Assumptions

- Remember, there are a few assumptions that we make for when doing diff-in-diff
    - Parallel Trends
    - No Spillovers
    - No other Treatments

--

### Parallel Trends

![Akresh Graph](img/akresh_graph.png)

--

### Spillovers

- The Stable Unit of Treatment Value tells us that those who are treated must be remain in our treatment group!
    - In the context of the Akresh et al. paper, we might be worried about migration. 
    - How might migration bias their results? Why?
    - They also do not observe children who died before their survey in 1992. How might this bias the results?

--

### Robustness Checks

![Akresh Table](img/akresh_t6.png)


----

## Bellows and Miguel (2009)

----

### Motivation 

- Economists often think of civil war as development in reverse - yet, a number of rapid growth success stories following civil war (Uganda and Mozambique) suggest that war is not necessarily only negative.
- Historical evidence suggests that wars play an important role in state formation and creation of institutions
- **Goal:** To assess effects of conflict exposure on individuals’ participation in collective action and aggregate community-level economic outcomes following conflict


--

- Bellows and Miguel Consider two levels of analysis
    - Individual Level:
    - Chiefdom Level: Use outcomes at a higher level of aggregation than the household to see if there are changes in social norms and institutions as a result of the conflict.

-- 

### Chiefdom Level Identification Strategy

- A chiefdom is an administrative unit of about 20,000 people. They are quite salient - individuals usually refer to their residence location by chiefdom.
- Bellows and Miguel estimate effects by comparing 152 chiefdoms that were exposed to different levels of conflict instensity
- Control for local characteristics to isolate variation in conflict:
    - Diamond mines
    - Roads
    - Population density
    - Prewar socioeconomic measures
- Use district Fixed Effects to account for unobserved regional variation.

--

### Bellows and Miguel are using a fixed-effects model - what is the identifying assumption? What should we be concerned about?

--

![BM Table](img/bm_t7.png)

--

![BM Table](img/bm_t8.png)

--

![BM Table](img/bm_t9.png)

--




----

### Questions?
 
(Reminder - I have OH after tutorial)

</script>
</section>