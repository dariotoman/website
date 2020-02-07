---
layout: slide
title: ECO368 - Tutorial 3
description: Papers Review I
theme: white
transition: slide
permalink: /eco368/tutorial_3.html
---
<section data-markdown data-separator="^\r?\n----\r?\n" data-separator-vertical="^\r?\n--\r?\n">
<script type="text/template">



## Papers Review I
### ECO368 - Tutorial 3

![U of T Logo](u_of_t_crest.svg)

[Dario Toman](https://dariotoman.com/)

dario.toman@utoronto.ca

----

## Causes of Civil War  

----

### "Greed and Grievances"
**Greed**
- Armed conflict is motivated by a "cost-benefit analysis" that insurgents make, evaluating their welfare under rebellion and peace.

**Grievance**
- Armed conflict is a result of rebellion over issues related to identity (ethnicity, race, class), not economics.

--

- The debate over "Greed and Grievances" was largely sparked by a report written by Paul Collier and Anke Hoeffler in 2000
- In this report, the authors made a strong case for the "Greed" case
    - They find that civil war is correlated with factors related to greed, rather than grievances
- This model and its conclusions drew lots of criticism

----

## Fearon and Laitin (2003)

--

- Fearon and Laitin are concerned with prevalence of civil war since 1990
    - They argue that these insurgencies occur where they are feasible
    - They view insurgency as a "technology" - what do they mean by this?
- Main Hypothesis: Weak governments provide good settings for insurgency

--

![fl](img/fl.png)

--

**Key Results:**
- Conflict occurs in "weak" states:
    - Poor
    - "New"
    - "Unstable"
    - Oil Exporters
    - Anocracy
- Little evidence oto support grievances
    



----

## Collier, Hoeffler, and Rohner(2009)

--

- In this paper, Collier, Hoeffler, and Rohner expand on their original work
    - Include more recent data
    - Address some of the concerns raised by others (including some of Fearon and Laitin's concerns)
    - Maintain that the "Greed" argument holds, with some "weak" evidence for the feasibility hypothesis

--

![c_results](img/collier_results.png) 

--

**Some Select Results**
- Civil war tends to occur in places with low GDP.
    - How do they interpret this?
- The effect of primary commodity exports has an "inverted U shape"
    - How do they conclude this?
    - Interpretation?
    - Does this hold up in robustness checks?

--

### Robustness Checks

![c_rob](img/collier_robust.png)

--

### Quick Metrics Recap: 2SLS

- Goal: solving endogeneity problem

**Estimation:**
- Step 1: Regress $ x = \gamma z + u $
- Step 2: Regress $ y = \beta \hat{x} +\varepsilon $

**Assumptions:**
- Instrument is relevant
- Instrument is exogenous
- _Exclusion Restriction Condition_

--

### Discussion:
## Why do Fearon+Laitin and Collier+Hoeffler+Rohner have "different" findings?

----

## Ross (2006)

--

- Ross (2006) focus on "resource" curses as the reason for civil conflict
- Fearon and Laitin (2003) and Collier (2004, 2009) already address resources
    - What is the issue?

>This “resource exports to GDP” measure was originally developed by
>Sachs & Warner (1995) and later adopted by Collier & Hoeffler (1998) and many
>others—including, regrettably, me (Ross 2001a).

--

### Endogeneity of "Resources to GDP"

**Reverse Causality** Civil War $\rightarrow$ GDP
- This is an endogeneity issue where civil war affects non-resource sector

**Spurious Correlation**  (OVB)
- It is possible that a third variable affects both the size of the resource sector and civil war
    - Think: property rights, weak rule of law

<br></br>
- To deal with these issues, Ross uses better data on resources 

--

### Mechanisms
- Ross raises the concern that very little is known about the mechanisms that link resources to civil war
-Suggests that resource wealth:
    - Increases the value of the state as a target
    - Increases value of sovereignty in resource rich regions [1]
    - Funds rebel organization
    - Weakens the state
    - Increases risk of conflict due to trade shocks
    - Lengthens civil war
<br></br>

[1] Aside: see Sanchez de la Sierra's work in the DRC if you're interested in this

--

### Main Conclusions
- Exogenous measures of resources robustly correlated with onset of civil war
- Oil and diamond production lead to civil wars through:
    - promoting insurgency in resource rich areas
    - Trade shocks
- Conflict duration is linked to contraband:
    - Gemstones, timber, narcotics

----

### So, do you believe be "greed" argument?

----

- This debate is still not settled
    - "Grievances" are somewhat harder to measure than "greed"
- One of the leading theories for the grievances side is _horizontal inequality_
    - **Vertical Inequality:** Inequality between individuals
    - **Horizontal Inequality:** Inequality between groups
    - See Frances Stewart's work if you are interested in this


----


### Questions?
 
(Reminder - I have OH after tutorial)

</script>
</section>