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
  var map = L.map('map').setView([35,0], 2);

  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
  }).addTo(map);

  var marker = L.marker([52.3793, -1.5615]).addTo(map);
  
  marker.bindPopup("Warwick: Isabella Goncalves de Alvarenga <a href='https://pg-prob-sem.github.io/category/Isabella/'></a>");


  var marker = L.marker([45.7814, 4.8671]).addTo(map);
  
  marker.bindPopup("Institute Camille Jordan: <a href='https://pg-prob-sem.github.io/random_graphs/bas/'> Bas Lodewijks </a>");

</script>

attempting to add marker 6
Warwick uni 52.3793° N, 1.5615° W

45.7814° N, 4.8671° E
