---
layout: slide
title: ECO368 - Tutorial 4
description: Potential Outcome Models and Differences in Differences
theme: white
transition: slide
permalink: /eco368/tutorial_4.html
---
<section data-markdown data-separator="^\r?\n----\r?\n" data-separator-vertical="^\r?\n--\r?\n">
<script type="text/template">



## Potential Outcome Models and Differences in Differences
### ECO368 - Tutorial 4

![U of T Logo](u_of_t_crest.svg)

[Dario Toman](https://dariotoman.com/)

dario.toman@mail.utoronto.ca


----

### Probability Recap

- To understand this tutorial, it is crucial that you understand conditional expectations:
$$ \mathbb{E}[X|Y=y] $$

- Example: 
$$ \mathbb{E}[\text{Height} | \text{Occupation = Firefighter}]$$

--

### Numerical Example


----
## Potential Outcome Models
(Reference: Angrist & Pischke - _Mostly Harmless Econometrics_)

----

### Motivation: The health effects of hospital visits

- Suppose you are interested in studying the health effects of hospital visits, and have access to data from the National Health Interview Survey (NHIS)
- This data has 2 questions that may be helpful in your analysis:
    - "During the last 12 months, was the respondent a patient in a hospital overnight?"
    - "Would you say your health in general is excellent, very good, good, fair, or poor?"
- This data allows you to identify individuals who visit hospitals, and their health.

--


<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;border-width:1px;border-style:solid;border-color:#ccc;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:17px 15px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:17px 15px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
.tg .tg-9h7x{font-size:32px;border-color:#343434;text-align:center;vertical-align:top}
.tg .tg-qvc6{font-size:32px;border-color:#343434;text-align:right;vertical-align:top}
.tg .tg-lw9u{font-weight:bold;font-size:32px;border-color:#343434;text-align:center;vertical-align:top}
.tg .tg-zzuf{font-weight:bold;font-size:32px;border-color:#343434;text-align:right;vertical-align:top}
</style>
<table class="tg">
  <tr>
    <th class="tg-qvc6"></th>
    <th class="tg-lw9u">Sample Size</th>
    <th class="tg-lw9u">Mean Health Status</th>
    <th class="tg-lw9u">Std. Error</th>
  </tr>
  <tr>
    <td class="tg-zzuf">Hospital</td>
    <td class="tg-9h7x">7,774</td>
    <td class="tg-9h7x">3.21</td>
    <td class="tg-9h7x">0.014</td>
  </tr>
  <tr>
    <td class="tg-zzuf">No Hospital</td>
    <td class="tg-9h7x">90,049</td>
    <td class="tg-9h7x">3.93</td>
    <td class="tg-9h7x">0.003</td>
  </tr>
</table>


--

### Do hospitals make people healthier?

- A Naïve comparison of averages will lead you to conclude that hospitals make people sicker! 
- Why is this the case?
    - Clearly, the people who go to hospitals are very different from people who don't...
        - Typically people who choose to go to a hospital are already sick.
- Simply comparing the _treated_ population to the _untreated_ or _control_ population will introduce **Selection Bias**

--

## Potential Outcome Models

- Potential Outcome primarily aim to address this issue of selection bias when estimating the _causal effect_ of a treatment. 
- In this context **treatment** refers to some kind of intervention. Could be:
    - A hospital visit
    - Implementation of an aid program
    - Exposure to conflict

--

### Potential Outcome Notation

- We will denote treatment of individual using $D_i = \{0,1\}$ : 
 
 \begin{equation} D_i =
 \begin{cases}  
 1 & \text{if treated} \\\\
 0  & \text{if not treated} 
 \end{cases}
\end{equation}

- We think of each individual $i$ having _latent_ potential outcome $Y_i$:

 \begin{equation} Y_i= 
 \begin{cases}
 Y_{1i} & \text{ if treated }(D_i=1) \\\\
 Y_{0i} & \text{ if not treated } (D_i=0) 
 \end{cases} 
 \end{equation}

- NOTE: For any individual we can only observe $Y_{1i}$ **OR** $Y_{0i}$ !!!


--

### The Problem of Causal Inference

- We would like to know:
    - The causal effect of $D_i$ for individual $i$: $Y_{1i}-Y_{0i}$
    - The average causal effect: $ \mathbb{E}[Y_{1i}-Y_{0i}] $
- **But** it is impossible to observe both $Y_{1i}$ and $Y_{0i}$
<br></br>

- In the hospital problem, you would need to know:
    - John Smith's health in the world where he goes to the hospital, and
    - John Smith's health in the world where he does not got to the hospital.

--

### Selection Bias

#### What went wrong in our hospital example?

- We did a Naïve comparison of averages: 

\begin{align} \mathbb{E}[Y_i | D_i=1] - \mathbb{E}[Y_i | D_i=0] & = \mathbb{E}[Y_{1i} | D_i=1] - \mathbb{E}[Y_{0i} | D_i=0] \\\\ 
& = \mathbb{E}[Y_{1i} | D_i=1] - \mathbb{E}[Y_{0i} | D_i=1] \\\\ & \qquad + \mathbb{E}[Y_{0i} | D_i=1] - \mathbb{E}[Y_{0i} | D_i=0] \end{align}

--
 
\begin{align} \mathbb{E}[Y_i | D_i=1] - \mathbb{E}[Y_i | D_i=0] &= \mathbb{E}[Y_{1i} | D_i=1] - \mathbb{E}[Y_{0i} | D_i=1] \\\\ 
& \qquad + \mathbb{E}[Y_{0i} | D_i=1] - \mathbb{E}[Y_{0i} | D_i=0] \\\\
&= \text{Average Treatment Effect on the Treated} \\\\
& \qquad + \text{Selection Bias}
 \end{align}

--

### The Ideal Experiment

- Our goal in is to somehow eliminate the selection bias, so that we can estimate the Average Treatment Effect
- One way we can do this is through randomization! If we are able to properly randomize, we get:

$$ \mathbb{E}[Y_{0i} | D_i=1] - \mathbb{E}[Y_{0i} | D_i=0] = 0 $$

- Randomization does not allow for selection into treatment, so we are able to eliminate any selection bias.
    - The "Randomista Movement" has largely been built on this principle (See Nobel Prize winners Duflo, Banerjee, and Kremer) 

--


### What if we can't randomize

- Sometimes randomization is not feasible.
    - It could be too costly
    - Ethical Issues
- In these cases we are able to use models that are able to account for the selection bias in some way (usually by assumption)
    - Regression Discontinuity (RD)
    - Differences in Differences (DiD)

----

## Differences in Differences 
(Reference: Cunningham - _Causal Inference: The Mixtape (V1.7)_ )

----

### Motivational Example: Erotic Services

- In 2002, Craigslist opened a section on its classifieds website called "Erotic Services" (ERS)
- The introduction of the section caused debate over its effects
    - Sex workers argued it made them safer (working from home instead of streets)
    - Activists and law enforcement argued it would facilitate sex trafficking and violence against women
- This is an empirical question that we have tools to try and address!

--

### Motivational Example: Erotic Services

- In the language of our Potential Outcomes model, we are trying to estimate the average treatment effect:

$$ \mathbb{E}[\delta_i] = \mathbb{E}[M_{1i}-M_{0i}] $$

- Where:
    - $\delta_i$ is the treatment effect on individual $i$
    - $M_{1i}$ is the number of murdered women in SF with the classifieds
    - $M_{0i}$ is the number of murdered women in SF without the classifieds
- Can we calculate this?

--

## NO!

--

### Motivational Example: Erotic Services

- In order to calculate $\mathbb{E}[M_{1i}-M_{0i}] $ we need to see
    - $M_{1i}$ is the number of murdered women in SF with the classifieds
    - $M_{0i}$ is the number of murdered women in SF without the classifieds
- We only ever observe one of these two outcomes at any given time.

--

### Difference 1

- Can we simply Compare SF to a different city? Say New York, where there weren't such classifieds?
    - **NO!** New York City and San Francisco are very different, so we have selection bias!
    - By comparing the SF and NYC, we cannot separate the treatment effect $\delta$ from the effect of the city.
    
<br></br>

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:17px 15px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:17px 15px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
.tg .tg-scg7{font-weight:bold;font-size:32px;background-color:#f0f0f0;border-color:#000000;text-align:right;vertical-align:top}
.tg .tg-k3hh{font-weight:bold;font-size:32px;background-color:#ffffff;border-color:#000000;text-align:right;vertical-align:top}
.tg .tg-lm3l{font-weight:bold;font-size:32px;border-color:#000000;text-align:center;vertical-align:top}
.tg .tg-gzlc{font-size:32px;border-color:#000000;text-align:center;vertical-align:top}
</style>
<table class="tg">
  <tr>
    <th class="tg-k3hh"></th>
    <th class="tg-lm3l">Outcome</th>
  </tr>
  <tr>
    <td class="tg-scg7">San Francisco</td>
    <td class="tg-gzlc">M= SF</td>
  </tr>
  <tr>
    <td class="tg-scg7">New York</td>
    <td class="tg-gzlc">M= NYC</td>
  </tr>
  <tr>
    <td class="tg-scg7">Difference</td>
    <td class="tg-lm3l">SF-NYC</td>
  </tr>
</table>

--

### Difference 2

- Can we simply compare SF before and after the introduction?
    - **NO!** There might be an existing trend in murders that was happening regardless of the classifieds
    - By comparing the _Pre_ and _Post_ periods, we cannot separate the time trend ($T$) from the treatment effect $\delta$

<br></br>

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:17px 15px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:17px 15px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
.tg .tg-scg7{font-weight:bold;font-size:32px;background-color:#f0f0f0;border-color:#000000;text-align:right;vertical-align:top}
.tg .tg-k3hh{font-weight:bold;font-size:32px;background-color:#ffffff;border-color:#000000;text-align:right;vertical-align:top}
.tg .tg-lm3l{font-weight:bold;font-size:32px;border-color:#000000;text-align:center;vertical-align:top}
.tg .tg-gzlc{font-size:32px;border-color:#000000;text-align:center;vertical-align:top}
</style>
<table class="tg">
  <tr>
    <th class="tg-k3hh"></th>
    <th class="tg-lm3l">Pre</th>
    <th class="tg-lm3l">Post</th>
    <th class="tg-lm3l">Difference</th>
  </tr>
  <tr>
    <td class="tg-scg7">San Francisco</td>
    <td class="tg-gzlc">M= SF</td>
    <td class="tg-gzlc">M = SF + T + 𝛿</td>
    <td class="tg-lm3l">T + 𝛿</td>
  </tr>
</table>


--

### Differences in Differences
Differences in Differences combine these two sources of variation to estimate $\delta$

--

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:17px 15px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:17px 15px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
.tg .tg-scg7{font-weight:bold;font-size:32px;background-color:#f0f0f0;border-color:#000000;text-align:right;vertical-align:top}
.tg .tg-k3hh{font-weight:bold;font-size:32px;background-color:#ffffff;border-color:#000000;text-align:right;vertical-align:top}
.tg .tg-lm3l{font-weight:bold;font-size:32px;border-color:#000000;text-align:center;vertical-align:top}
.tg .tg-gzlc{font-size:32px;border-color:#000000;text-align:center;vertical-align:top}
</style>
<table class="tg">
  <tr>
    <th class="tg-k3hh"></th>
    <th class="tg-lm3l">Pre</th>
    <th class="tg-lm3l">Post</th>
    <th class="tg-lm3l">Difference</th>
  </tr>
  <tr>
    <td class="tg-scg7">San Francisco</td>
    <td class="tg-gzlc">M= SF</td>
    <td class="tg-gzlc">M = SF + T + 𝛿</td>
    <td class="tg-lm3l">T + 𝛿</td>
  </tr>
  <tr>
    <td class="tg-scg7">New York</td>
    <td class="tg-gzlc">M= NYC</td>
    <td class="tg-gzlc">M = NYC + T</td>
    <td class="tg-lm3l">T</td>
  </tr>
  <tr>
    <td class="tg-scg7">Difference</td>
    <td class="tg-lm3l">SF-NYC</td>
    <td class="tg-lm3l">SF - NYC + 𝛿</td>
    <td class="tg-lm3l">𝛿</td>
  </tr>
</table>

--

### Assumptions in Differences in Differences
- What assumptions have we implicitly made here?
    1. The effect of time in San Francisco, $T_{SF}$,  is the same as that in New York, $T_{NYC}$.
    2. $SF_{PRE} - NYC_{PRE}$ in the Pre period is the same as $SF_{POST} - NYC_{POST}$ in the post period.
- Formally, these make up what is commonly called the **parallel trends** assumption.

--






----

### Questions?


 
(Reminder - I have OH after tutorial)

</script>
</section>