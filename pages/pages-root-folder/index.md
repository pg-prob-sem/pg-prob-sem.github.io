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
  month: "August"
  title: "Gaussian Approximation of Poisson Functionals via Malliavin-Stein Method"
  url: 'https://pg-prob-sem.github.io/steins_method/Tara/'
  image: tara.jpg
  text: 'Tara Trauthwein'

widget2:
  month: "September"
  title: "A spinal approach for the convergence of branching processes to the Brownian CRT"
  url: 'https://pg-prob-sem.github.io/scaling_limit/felix'
  image: felix.jpg
  text: 'Félix Foutel-Rodier'

widget3:
  month: "October"
  title: "TBA"
  url: 'https://pg-prob-sem.github.io/category/Isabella'
  image: placeholder.jpg
  text: 'Isabella Goncalves de Alvarenga'

   
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

<div id="map" style="height: 400px;"></div>

<script>
  var map = L.map('map').setView([40,0], 3);

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
  
  marker.bindPopup("Karlsruhe Institute of Technology: <a href='https://pg-prob-sem.github.io/spatial_stochastics/steffen/'> Steffen Betsch </a>");

   var marker = L.marker([49.5046, 5.9484]).addTo(map);
  
  marker.bindPopup("University of Luxembourg: <a href='https://pg-prob-sem.github.io/steins_method/Tara/'> Tara Trauthwein </a>");

   var marker = L.marker([51.7579, -1.2618]).addTo(map); 
  
  marker.bindPopup("University of Oxford: <a href='https://pg-prob-sem.github.io/scaling_limit/felix/'> Félix Foutel-Rodier </a>");


  var marker = L.marker([52.3793, -1.5615]).addTo(map);
  
  marker.bindPopup("Univeristy of Warwick: <a href='https://pg-prob-sem.github.io/category/Isabella/'> Isabella Goncalves de Alvarenga </a>");

