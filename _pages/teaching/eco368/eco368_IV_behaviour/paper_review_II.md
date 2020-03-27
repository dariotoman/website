---
layout: slide
title: ECO368 - Tutorial 6
description: Conflict+Behaviour, IV
theme: white
transition: slide
permalink: /eco368/tutorial_6.html
---
<section data-markdown data-separator="^\r?\n----\r?\n" data-separator-vertical="^\r?\n--\r?\n">
<script type="text/template">



## Conflict and Behaviour, Instrumental Variables
### ECO368 - Tutorial 6

![U of T Logo](u_of_t_crest.svg)

[Dario Toman](https://dariotoman.com/)

dario.toman@mail.utoronto.ca


----

## Behavioural Responses to Conflict

----

### Behavioural Responses to Conflict

- We have already talked about how conflict influences collective action following the conclusion of civil war
    - Bellows and Miguel (2009), Blattman (2009)
    
- It is natural to ask if individual's preferences are affected by exposure to conflict

--

### Behavioural Responses to Conflict

- To asses the effect of conflict on individuals preferences, we use methods imported from Behavioural/Experimental Economics
- Using experiments, we can estimate certain characteristics of individuals preferences.
    - For example: Risk preferences
- We can then use conflict data to see if exposure to violence predicts respondents' preferences.

--

### Example: Callen et al. (2014)

- **Goal:** Assess the effect of exposure to violence on individuals' risk preferences - in particular their **certainty premium**. 

- **Definition:** Certainty Premium is the cost you are willing to pay to have a certain outcome, rather than an uncertain outcome, relative to what an expected utility model predicts.

--

### Callen et al. (2014) - Experiment

![Callen](img/callen_experiment.png)

--

### Callen et al. (2014)

- Using the experimental results, Callen et al. can back out the certainty premium
- They then use exposure to conflict to try and explain variation in the estimated certainty premium


----

## Instrumental Variables 

----

### Motivation

- One of the primary goals of econometrics is to allow for _causal inference_. 
- Unlike statistics, which generally describes data, economists want to learn about causality
- By third year, you already know

$$Correlation \neq Causation$$

- Instrumental Variables are one method we can use to estimate causal relationships consistently. 

--

### Motivating Example: Veteran Earnings (Angrist, 1990)

- **Goal**: Estimate the effect of military service on long-run earnings
- Data:
    - Sample of men born in 1950, 1951, 1952, 1953
    - Earnings data for these men from administrative records (1966-1984)
- Model: 
$$y_{ict}= \beta_c + \delta_t + \rho X_i + u_{it}$$

Why not estimate using OLS?

--

### Endogeneity Bias

- Individuals could volunteer for service in Vietnam
- Not everyone was allowed to serve, even if they volunteered
- We might expect that the people who serve in the military are substantially different from those who do not
<br></br>
- One of the assumptions for unbiased estimates using OLS is the Conditional Independence Assumption. Here:
$$Cov(D_i, u_{it})=0$$
- If we have selection into service on unobservables, OLS estimates will be biased. 

--

### The IV Approach

- The basic idea of the instrumental variable approach is to try and isolate _random variation_ in the _endogenous variable._
- If we study the effect of just this random component of the variation, we can unbiasedly estimate changes in the outcome associated with it. 

--

### IV Approach: Veteran Earnings

- During the Vietnam War, there was a draft lottery
- People's draft eligibility was assigned using a formal lottery for each draft-eligible year:
    - Each man was assigned a "Random Sequence Number" (RSN)  between 1 and 365 based on their date of birth
    - RSN 001 would be first to be drafted first, followed by 002, ...
- Clearly, the probability of service decreases with RSN

--

### IV Approach: Veteran Earnings

- The RSN you get is random - it is assigned randomly based on date of birth, and thus should not be correlated with any individual characteristics. 
- So, if we compare individuals with low RSNs to individuals with high RSNs, any changes in long-term income must be an effect of the military service. 
- Angrist does this, and finds that white men who served in Vietnam earn 15% less than those that did not.

--

### Instrumental Variable

- An Instrument ($Z_i$) has 2 key properties:

1. **Relevance:** The instrument must be correlated with the causal (endogenous) variable of interest:
    $$ Cov(Z_i, X_i)=0 $$
2. **Exclusion Restriction:** The instrument must be uncorrelated with any other determinants of the dependent variable.
    $$ Cov(Z_i, u_{it}) = 0 $$

--

### Exclusion Restriction

- The exclusion restriction is **not a testable assumption**, instead authors must argue that it holds. 
- Intuitively, the exclusion restriction says that the instrument must not influence the outcome variable in any way, other than through the endogenous variable. 

--

### Estimation of IV (2SLS)

- Say we want to estimate the effect of $x$ on $y$, and have an instrument $z$:

**First stage:**
$$ x = \gamma_0 + \gamma_1 z + \eta $$

**Second stage:**
$$ y = \beta_0 + \beta_1 \hat{x} + \varepsilon$$

--

### Common Issues with IV

- Endogenous Instruments
    - If the Instrument you use fails the Exclusion Restriction, you have not fixed the problem
- Weak Instrument Bias
- IV estimates the Local Average Treatment Effect (LATE)

--

## Examples of IV

--

## Example of IV: Voors et al. (2012)

- **Goal:** Assess the effect of conflict exposure on behaviour
- **Endogeneity Problem:** Exposure to conflict may be correlated with unobserved characteristics
<br></br>
- **Proposed IV**: Distance from capital city

--

### What are the assumptions?

1. **Relevance:**

<br></br>

2. **Exclusion Restriction:**

--

### Assessing the Assumtions

1. **Relevance:** We can test the "First Stage" of the IV using an F-Test.

<br></br>

2. **Exclusion Restriction:** Can you think of way how distance from capital city may affect behaviour other than conflict?

--

## Example of IV: Miguel et al. (2004) + Others!

**Goal:** Estimate the effect on income on civil war prevalence
**Endogeneity Problem:** Civil War decreases income (reverse causality), income may be correlated with unobserved variables that also affect conflict (OVB)
<br></br>
- **Proposed IV**: Rainfall Shocks

--

### What are the assumptions?

1. **Relevance:**

<br></br>

2. **Exclusion Restriction:**

--

### Does rainfall pass the Exclusion Restriction Assumption?

--

### Critique of Rainfall as an instrument (Sarsons, 2015)

- Heather Sarsons provides evidence that the rainfall IV should be questioned!
- In her paper, Sarsons looks at the effect of rainfall on rioting in India
- She compares the effect of rainfall on riots in "Dam-fed" and "Non-Dam-Fed" districts.
- **What would we expect if the Exclusion Restriction Assumption" were valid?**

--

### Critique of Rainfall as an instrument (Sarsons, 2015)

- If rainfall only affects rioting through the income channel, we would expect to see the "Dam-fed" region's rioting to be less affected by rainfall.
    - Damns provide protection from rain shocks, so the shocks should not affect income in these regions
- She reports that positive rainfall shocks reduce riots in dam-fed regions.
- There must be some mechanism other than income through which rainfall affects riots!
 
----

### Questions?
 
(Reminder - I have OH after tutorial)

</script>
</section>