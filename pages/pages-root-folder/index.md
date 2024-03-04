---
layout: frontpage
header:
  image_fullwidth: header_unsplash_12.jpg
teaser: "The Postgraduate Online Probability Seminar (POPS) is an online platform for doctoral students and post-docs from all over the world to present and promote their research to a global audience in areas related to probability and its applications."

permalink: /index.html

homepage: true
---

{% assign today = site.time | date: '%s' %}

{% assign posts_future = site.posts | where_exp: "post", "post.date > site.time" | sort: "date" %}
{% assign posts_future_published = posts_future | where: "tags", "published" %}

{% assign posts_past = site.posts | where_exp: "post", "post.date <= site.time" | sort: "date", "last" %}
{% assign posts_past_published = posts_past | where: "tags", "published" %}

{% assign next_talk = posts_future_published[0] %}
{% assign upcoming_talk = posts_future_published[1] %}
{% assign previous_talk = posts_past_published | last %}

<div class="row">
	{% include _talk_widget.html talk=previous_talk %}
  {% include _talk_widget.html talk=next_talk border=true %}
  {% include _talk_widget.html talk=upcoming_talk %}
</div>

<div class="row t60 b60">
	<div class="small-12 text-center columns">
		<a class="button large radius alert" href="https://www.jiscmail.ac.uk/cgi-bin/wa-jisc.exe?SUBED1=PG-PROB-SEM&A=1"> Sign up to our mailing list here ›</a>
	</div><!-- /.small-12.columns -->
</div><!-- /.row -->

We pride ourselves on being an international seminar series.

<link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>
<script src="https://unpkg.com/leaflet.markercluster@1.4.1/dist/leaflet.markercluster.js"></script>
<link rel="stylesheet" href="https://unpkg.com/leaflet.markercluster@1.4.1/dist/MarkerCluster.css" />
<link rel="stylesheet" href="https://unpkg.com/leaflet.markercluster@1.4.1/dist/MarkerCluster.Default.css" />


<div id="map" style="height: 400px; z-index: 10; position: relative;" ></div>

<script>
	var map = L.map('map').setView([40, 0], 2);

	L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
		attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
	}).addTo(map);   

var markers = L.markerClusterGroup();

{% for post in site.posts %}
  {% if post.latitude and post.longitude and post.tags contains 'published'%}
    var marker = L.marker([{{ post.latitude }}, {{ post.longitude }}]);
    marker.bindPopup("{{ post.uni }}: <a href='{{ site.url }}{{ site.baseurl }}{{ post.url }}'> {{ post.speaker }} </a>");
    markers.addLayer(marker);
  {% endif %}
{% endfor %}


map.addLayer(markers);
	 
</script>



<p>Number of past talks: {{ posts_past_published | size }}</p>
