---
permalink: /
title: "Welcome!"
excerpt: "About me"
author_profile: false
redirect_from: 
  - /about/
  - /about.html
---

<style>
  .two-col {
    display: flex;
    align-items: start;
    gap: 2rem;
    flex-wrap: wrap;              /* allows stacking on small screens */
  }
  .two-col .col-text {
    flex: 1 1 420px;              /* grows, min width for readability */
  }
  .two-col .col-image {
    flex: 0 0 320px;              /* fixed-ish image column */
    max-width: 420px;             /* keep image from getting too huge */
  }
  .two-col .col-image img {
    width: 100%;
    height: auto;
    display: block;
    border-radius: 8px;           /* optional: soften corners */
  }
  /* Optional: tighten spacing under the page title */
  .page__content > h1:first-of-type { margin-bottom: 1rem; }
  @media (max-width: 700px) {
    .two-col { gap: 1.25rem; }
    .two-col .col-image, .two-col .col-text { flex: 1 1 100%; }
  }
</style>

<div class="two-col">


  <div class="col-image">
    <img src="{{ '/images/profile.png' | relative_url }}" alt="Profile">
  </div>

   <div class="col-text">
    <p>
      I am a PhD candidate in Economics at the University of Toronto working at
      the intersection of political economy and development economics. My job market paper
      studies the consequences of partisan local elections for electoral competition, candidate
      selection, and governance. A second strand of my research examines how electoral and judicial
      institutions shape gendered access to healthcare and justice.
    </p>
    <p><em>I will be on the job market in 2025–2026.</em></p>
  </div>
  
</div>
