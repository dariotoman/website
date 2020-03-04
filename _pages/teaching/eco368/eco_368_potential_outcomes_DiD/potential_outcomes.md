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
.tg .tg-76mh{font-size:medium;border-color:#343434;text-align:left;vertical-align:top}
.tg .tg-ur59{border-color:#343434;text-align:left;vertical-align:top}
.tg .tg-a072{font-weight:bold;border-color:#343434;text-align:left;vertical-align:top}
</style>
<table class="tg">
  <tr>
    <th class="tg-ur59"></th>
    <th class="tg-a072">Sample Size</th>
    <th class="tg-a072">Mean Health Status</th>
    <th class="tg-a072">Std. Error</th>
  </tr>
  <tr>
    <td class="tg-a072">Hospital</td>
    <td class="tg-ur59">7,774</td>
    <td class="tg-ur59">3.21</td>
    <td class="tg-ur59">0.014</td>
  </tr>
  <tr>
    <td class="tg-a072">No Hospital</td>
    <td class="tg-ur59">90,049</td>
    <td class="tg-ur59">3.93</td>
    <td class="tg-76mh">0.003</td>
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
Y_{0i} &\text{ if not treated } (D_i=0) 
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

**What went wrong in our hospital example?**

- We did a Naïve comparison of averages: 

\begin{align} \mathbb{E}[Y_i | D_i=1] - \mathbb{E}[Y_i | D_i=0] & = \mathbb{E}[Y_{1i} &| D_i=1] - \mathbb{E}[Y_{0i} | D_i=0] \\\\ 
& = \mathbb{E}[Y_{1i} &| D_i=1] - \mathbb{E}[Y_{0i} | D_i=1] \\\\ & \\ + \mathbb{E}[Y_{0i} | D_i=1] - \mathbb{E}[Y_{0i} | D_i=0] \end{align}


----

### Questions?


 
(Reminder - I have OH after tutorial)

</script>
</section>