---
layout              : page
title               : "title"
subheadline         : ""
teaser              : ""
header:
   image_fullwidth  : "header_unsplash_12.jpg"
permalink           : "/page/" 
output:
  md_document:
    variant: markdown_github
    preserve_yaml: TRUE
---

<link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>

<div id="map" style="height: 400px;"></div>

<script>
  var map = L.map('map').setView([40, 0], 2);

  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
  }).addTo(map);

  // Iterate through pages and add markers
  {% for page in site.pages %}
    {% if page.latitude and page.longitude %}
      var marker = L.marker([{{ page.latitude }}, {{ page.longitude }}]).addTo(map);
    {% endif %}
  {% endfor %}
</script>


