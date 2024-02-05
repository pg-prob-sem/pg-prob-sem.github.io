---
#
# Use the widgets beneath and the content will be
# inserted automagically in the webpage. To make
# this work, you have to use › layout: frontpage
#
layout: frontpage
header:
  image_fullwidth: header_unsplash_12.jpg
teaser: "The Postgraduate Online Probability Seminar (POPS) is an online platform for doctoral students and post-docs from all over the world to present and promote their research to a global audience in areas related to probability and its applications."


widget1:
  month: "January"
  title: "New stochastic Fubini theorem of measure-valued processes via stochastic integration"
  url: 'https://pg-prob-sem.github.io/stochastic_analysis/Jiaming/'
  image: jiaming.jpg
  text: 'Jiaming Chen'

widget2:
  month: "February"
  title: "Dynamical Gibbs variational principles and applications "
  url: 'https://pg-prob-sem.github.io/category/Jonas/'
  image: jonas.jpg
  text: 'Jonas Köppl'

widget3:
  month: "March"
  title: "TBA"
  url: 'https://pg-prob-sem.github.io/category/Andjela/'
  image: placeholder.jpg
  text: 'Andjela Sarkovic'

   
#
# Use the call for action to show a button on the frontpage
#
# To make internal links, just use a permalink like this
# url: /getting-started/
#
# To style the button in different colors, use no value
# to use the main color or success, alert or secondary.
# To change colors see sass/_01_settings_colors.scss
#
callforaction:
  url: https://www.jiscmail.ac.uk/cgi-bin/wa-jisc.exe?SUBED1=PG-PROB-SEM&A=1
  text: Sign up to our mailing list here ›
  style: alert
permalink: /index.html
#
# This is a nasty hack to make the navigation highlight
# this page as active in the topbar navigation
#
homepage: true
---

We pride ourselves on being an international seminar series. Below is a map showing all the universities and institutes that our speakers are from. 

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

var markers = L.markerClusterGroup();

  {% for post in site.posts %}
	{% if post.latitude and post.longitude %}
	var marker = L.marker([{{ post.latitude}}, {{ post.longitude}}]);
	  marker.bindPopup("{{ post.uni}}: <a href='{{ site.url }}{{ site.baseurl }}{{ post.url }}'> {{ post.speaker}} </a>");
	  markers.addLayer(marker);
	{% endif %}
	{% endfor %}

map.addLayer(markers);
   
</script>

