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
text to show if update has occured 21

<link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>

<div id="map" style="height: 400px;"></div>

<script>
  var map = L.map('map').setView([40, 0], 2);

  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
  }).addTo(map);   

  {% for post in site.posts %}
	{% if post.latitude and post.longitude %}
	var marker = L.marker([{{ post.latitude}}, {{ post.longitude}}]).addTo(map);
	  marker.bindPopup("Location: <a href='https://pg-prob-sem.github.io/random_graphs/bas/'> {{ post.speaker }} {{post.longitude}} </a>");
	{% endif %}
	{% endfor %}
   
</script>


