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







----

### Questions?
 
(Reminder - I have OH after tutorial)

</script>
</section>