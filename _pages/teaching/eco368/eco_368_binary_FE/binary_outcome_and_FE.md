---
layout: slide
title: ECO368 - Tutorial 1
description: Binary Outcome Models and Intro to Fixed Effects
theme: white
transition: slide
permalink: /eco368/tutorial_2.html
---
<section data-markdown data-separator="^\r?\n----\r?\n" data-separator-vertical="^\r?\n--\r?\n">
<script type="text/template">



## Binary Outcome Models and Intro to Fixed Effects
### ECO368 - Tutorial 2

![U of T Logo](u_of_t_crest.svg)

[Dario Toman](https://dariotoman.com/)

dario.toman@utoronto.ca

----
### Binary Outcome Models
(Source: Woolridge - Introductory Econometrics)

----

#### What does it mean for a variable to be "Binary"?

- A variable is considered binary if it can only take on values of 0 or 1.
- Examples:
    - Civil War Onset
    - Civil War Incidence
    - Civil War Termination
- **Recall from last time:** We can deal with including these as regressors fairly easily
- Using them as outcome variables requires some changes to our regression framework

----

#### Baseline Model:
### Linear Probability Model

--

### Linear Probability Model

- **Recall:** Ordinary Least Squares Model
$$y =\beta_0 + \beta_1 x_1 + ... + \beta_k x_k + \varepsilon$$
- Assuming zero conditional mean (MLR.4):
$$ E[y|\mathbf{x}]= =\beta_0 + \beta_1 x_1 + ... + \beta_k x_k $$

--
### Linear Probability Model

- If we have a binary outcome, consider $P(y=1|\mathbf{x})=E[y|\mathbf{x}]$:
$$ P(y=1|\mathbf{x})= =\beta_0 + \beta_1 x_1 + ... + \beta_k x_k $$

- This equation tells us that the _probability of success_ $p(\mathbf{x}) = P(y=1|\mathbf{x})$ is a linear function of our explanatory variables.
- $P(y=1|\mathbf{x})$ is often called the **response probability**

-- 

#### Let's take this regression model to the data!

- I will be using data from Sambanis (2004)
    - Nota Bene: Replication Data for papers is often publicly available!
- You can access his replication folder from his [website](http://web.sas.upenn.edu/sambanis/research/articles-on-civil-war/).

--

 
![Sambnis Data](img/sambanis_data.png)

--

 
![Sambanis_Scatter](img/sambanis_scatter.png)

-- 

We can easily estimate a linear probability model in STATA:
![Sambanis_linreg](img/sambanis_linreg.png)

--

![Sambanis_lpm](img/sambanis_scatter_lpm.png)


----

### Questions?
 
(Reminder - I have OH after tutorial)

</script>
</section>