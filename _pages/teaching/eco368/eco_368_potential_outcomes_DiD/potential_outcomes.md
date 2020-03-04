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

<table>
<thead>
<tr>
<th>Group</th>
<th>Sample Size</th>
<th>Mean Health Status</th>
<th>Std. Error</th>
</tr>
</thead>
<tbody>
<tr>
<td>Hospital</td>
<td>7,774</td>
<td>3.21</td>
<td>0.014</td>
</tr>
<tr>
<td>No Hospital</td>
<td>90,049</td>
<td>3.93</td>
<td>0.003</td>
</tr>
</tbody>
</table>


----

### Questions?


 
(Reminder - I have OH after tutorial)

</script>
</section>