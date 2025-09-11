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

.page__content {
  max-width: 1200px;   /* wider content area */
}


.two-col {
  display: flex;
  align-items: center;    /* vertically center image & text */
  gap: 2rem;
  flex-wrap: wrap;        /* stack on small screens */
}
.two-col .col-image {
  flex: 0 0 250px;        /* reserve space for the photo */
  max-width: 250px;
}
.two-col .col-image img {
  width: 100%;
  height: auto;
  border-radius: 8px;     /* optional: rounded corners */
}
.two-col .col-text {
  flex: 1 1 300px;        /* text takes the remaining width */
  min-width: 280px;
}
@media (max-width: 700px) {
  .two-col { gap: 1.25rem; }
  .two-col .col-image,
  .two-col .col-text { flex: 1 1 100%; max-width: 100%; }
}
</style>

<div class="two-col">
    <div class="col-image">
    <img src="{{ '/images/profile.png' | relative_url }}" alt="Profile">
  </div>
  
   <div class="col-text">
    <p>
      I am a PhD candidate in Economics at the University of Toronto. In my research, I employ empirical microeconomics techniques to answer questions related to health and political economy.
      </p>
       <p>
      My job market paper studies the consequences of partisan local elections for electoral competition, candidate
      selection, and governance. A second strand of my research examines how electoral and judicial
      institutions shape gendered access to healthcare and justice.
    </p>
    <p><em>I will be on the job market in 2025–2026.</em></p>
  </div>

  


  
</div>
