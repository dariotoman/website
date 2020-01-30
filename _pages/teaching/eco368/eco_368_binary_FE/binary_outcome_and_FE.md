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
## Binary Outcome Models
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
$$ E[y|\mathbf{x}]= \beta_0 + \beta_1 x_1 + ... + \beta_k x_k $$

--
### Linear Probability Model

- If we have a binary outcome, consider $P(y=1|\mathbf{x})=E[y|\mathbf{x}]$:
$$ P(y=1|\mathbf{x})=\beta_0 + \beta_1 x_1 + ... + \beta_k x_k $$

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

--

### Notice any issues?
- Negative predicted probabilities....
- Constant effect at all levels of $x$

----

### Probit and Logit Models

--

### Probit and Logit Models
- Probit and Logit models aim to provide a solution to the issues that arise in the linear probability model. 
- We still are interested in the response probability $P(y=1|\mathbf{x})$, but now:
$$ P(y=1|\mathbf{x}) =G(\beta_0 + \beta_1 x_1 + ... + \beta_k x_k) $$
- Notice that we are applying a transformation to the right hand side using the function $G()$

--

### Probit and Logit Models

- What properties do we want $G()$ to have?
    - Bounded by 0 and 1
    - Hopefully not linear...
- Can you think of any such functions?

--

### Probit Model

- The Probit Model uses the CDF of the standard normal distribution as the $G()$ function:
$$ G(z) = \Phi (z) $$
so
$$ P(y=1|\mathbf{x})= \Phi(\beta_0 + \beta_1 x_1 + ... + \beta_k x_k) $$

- **Recall:** The standard CDF is bounded by 0 and 1 

--

### Logit Model
- The Logit Model uses the _logistic_ function for $G()$:
$$G(z)=\Lambda(z)=\frac{e^z}{1+e^z}$$
so 
$$ P(y=1|\mathbf{x})= \frac{e^{\beta_0 + \beta_1 x_1 + ... + \beta_k x_k}}{1+e^{\beta_0 + \beta_1 x_1 + ... + \beta_k x_k}}$$
- This function is also bounded by 0 and 1

--

- These models are also easy to estimate in STATA:
![Logit_Stata](img/logit.png)

--

![Logit_scatter](img/sambanis_scatter_logit.png)

--

### So why not always use Probit/Logit?
- Computationally intensive
- Picking between Probit vs Logit is non-trivial
- Interpreting the coefficients is hard!
    - Remember, we transformed the right hand side!
    - Some math can show that the coefficients in the Logit model give the marginal effect on the _log-odds-ratio_ (which is not very useful...)

--

- STATA is able to recover more traditional marginal effects

![logit_margin](img/logit_margin.png)

- Nota Bene: This is just the **avergage** marginal effect!

----

### So, which model should we use?

- Remember that there are always trade-offs:
- **Linear Probability Model**
    - **Pro:** Simple to estimate, easy to interpret
    - **Con:** Inflexible, some impossible predictions
- **Logit/Probit**
    - **Pro:** Bounded by 0/1, more flexible
    - **Con:** Difficult to interpret, requires assumptions about functional form

--

### So, which model should we use?

- Authors should look at both!
- Estimates are actually very similar when mean probabilities are close to 0.5
    - As a rule of thumb, the models only diverge when the baseline probability is $<0.2$ and $>0.8$

----

## Intro to Panel Data

----

![Collier_fe](img/collier_FE.png)
(Source: _Collier, 2009_)

--

- One of our primary concerns when doing regression analysis is _endogeneity_
    - If the zero conditional mean assumption fails ($E[\varepsilon | \mathbf{x}]\neq 0$), our estimates of $\beta$ are biased.
- This concern is especially valid when dealing with cross-sectional data. 
- To illustrate this consider the following (hypothetical) data.

    



### Questions?


 
(Reminder - I have OH after tutorial)

</script>
</section>