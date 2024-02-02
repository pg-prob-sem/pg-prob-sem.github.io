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
text to show if update has occured 31

<link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>
<script src="https://unpkg.com/leaflet.markercluster@1.4.1/dist/leaflet.markercluster.js"></script>
<link rel="stylesheet" href="https://unpkg.com/leaflet.markercluster@1.4.1/dist/MarkerCluster.css" />
<link rel="stylesheet" href="https://unpkg.com/leaflet.markercluster@1.4.1/dist/MarkerCluster.Default.css" />


<div id="map" style="height: 400px;"></div>

<script>
  var map = L.map('map').setView([40, 0], 2);

  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
  }).addTo(map);   

  {% for post in site.posts %}
	{% if post.latitude and post.longitude %}
	var marker = L.marker([{{ post.latitude}}, {{ post.longitude}}]).addTo(map);
	  marker.bindPopup("{{ post.uni}}: <a href='{{ site.url }}{{ site.baseurl }}{{ post.url }}'> {{ post.speaker}} </a>");
	{% endif %}
	{% endfor %}
   
</script>


