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
  var map = L.map('map').setView([35,0], 3);

  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
  }).addTo(map);

  var marker = L.marker([45.7814, 4.8671]).addTo(map);
  
  marker.bindPopup("Institut Camille Jordan: <a href='https://pg-prob-sem.github.io/random_graphs/bas/'> Bas Lodewijks </a>");

  var marker = L.marker([48.2132, 16.3601]).addTo(map);
  
  marker.bindPopup("University of Vienna: <a href='https://pg-prob-sem.github.io/branching_processes/zsofia/'> Zsófia Talyigás </a>");

  var marker = L.marker([52.2054, 0.1132]).addTo(map);
  
  marker.bindPopup("University of Cambridge: <a href='https://pg-prob-sem.github.io/random_graphs/noah/'> Noah Halberstam </a>");

   var marker = L.marker([49.0119, 8.4170]).addTo(map);
  
  marker.bindPopup("Karlsruhe Institute of Technology : <a href='https://pg-prob-sem.github.io/spatial_stochastics/steffen/'> Steffen Betsch </a>");


  var marker = L.marker([52.3793, -1.5615]).addTo(map);
  
  marker.bindPopup("Univeristy of Warwick: <a href='https://pg-prob-sem.github.io/category/Isabella/'> Isabella Goncalves de Alvarenga </a>");

  
   
  

</script>

48.2132° N, 16.3601° E
