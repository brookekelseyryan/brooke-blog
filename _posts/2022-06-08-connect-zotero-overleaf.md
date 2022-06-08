---
layout: post
title: "Two Ways to Sync Your Zotero Group Library in Overleaf"
subtitle: "Sometimes the built-in Zotero integration on Overleaf doesn't work. In those cases, use https://api.zotero.org/groups/INSERT_GROUPID/items/top?format=bibtex&style=numeric&limit=100"
categories: [research, productivity, automation]
author: brooke
image: assets/images/zotero_alternative.png
permalink: "/blog/connect-zotero-overleaf.html"
---
Here's a very quick guide on how to connect your Zotero Group Library to Overleaf. I have used the [alternative solution](connect-zotero-overleaf.html#import-from-external-url) detailed below in the past when the default "From Zotero" integration in Overleaf did not work for me. I wanted to post this as a reference---for myself, because I always forget how to do this when I'm about to write a paper---and also in case it happens to be useful for anyone else. 

# Import from Zotero
First, you should try to import your Zotero group bibliography the "usual" way. To do this, click on "New File", and select "From Zotero." You'll select the appropriate Library from here. 
<figure>
  <img class="rounded border-brooke"
  src="/assets/images/zotero_preferred.png"
  alt="Preferred Way">
  <figcaption>To get to this dialog, select "New File" from your project page.</figcaption>
</figure>
After, your bibliography should appear in your project page: 
<figure>
  <img class="rounded border-brooke"
  src="/assets/images/first_way.png"
  alt="Preferred Way">
</figure>
Most of the time this should work, but I have had an issue on at least one project where this method didn't work. The second methodology listed below will help in those cases. 
# Import from External URL
If the first method didn't work, here's an easy workaround. 
Navigate to the same "New File" dialog, but then click "From External URL." 

Using the url `https://api.zotero.org/groups/INSERT_GROUPID/items/top?format=bibtex&style=numeric&limit=100`, and replacing the `INSERT_GROUPID` with the appropriate ID from the desired Zotero group, you should be able to import your bibliography this way. 
<figure>
  <img class="rounded border-brooke"
  src="/assets/images/zotero_alternative.png"
  alt="Preferred Way">
  <figcaption>Use the url https://api.zotero.org/groups/INSERT_GROUPID/items/top?format=bibtex&style=numeric&limit=100 in the From External URL option.</figcaption>
</figure>
## Example
To get the group ID from your Zotero group, you'll need to go onto your Zotero account on the web interface. For instance, my group library **AI Education Project** is hosted at `https://www.zotero.org/groups/4669023/ai_education_project`. The `Group ID` in this case is the number hash after the `groups/`, part of the URL, in this case, `4669023`.


In order for this workaround to be successful, the Zotero group settings need to be set to "Public." In the example I'm using, my group type was Public and the Membership was closed. 
<figure>
  <img class="rounded border-brooke"
  src="/assets/images/membership.png"
  alt="Preferred Way">
  <figcaption>Group settings on Zotero must be Public.</figcaption>
</figure>


Now, go back into Overleaf and paste in this URL with the group ID you just retrieved into the "From External URL" form. 

<figure>
  <img class="rounded border-brooke"
  src="/assets/images/example.png"
  alt="Preferred Way">
  <figcaption>Pasting the group ID,  4669023, into the URL: https://api.zotero.org/groups/4669023/items/top?format=bibtex&style=numeric&limit=100</figcaption>
</figure>

Then, navigating to our Overleaf project, we see that the file ai_education_project.bib was successfully imported! 
<figure>
  <img class="rounded border-brooke"
  src="/assets/images/example_result.png"
  alt="Preferred Way">
</figure>


# Conclusion
Hopefully this guide helped anyone who is on a paper deadline and wants to import their group bibliography in an efficient workflow. Happy paper writing! 


# References 
I initially saw this tip written about buried at the bottom of blog post written by Yuxuan Mei {% cite UsingOverleafZoteroMeiYuxuan %}. Since I believe this tip is so useful, and in that post its just included at the very bottom, I wanted to make a post dedicated to it entirely for clarity. 

{% bibliography --cited %}
