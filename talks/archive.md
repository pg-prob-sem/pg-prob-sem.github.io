---
layout: default
title: "Talks Archive"
teaser: "A full archive of all of our upcoming and previous talks"
breadcrumb: false
header:
    image_fullwidth : "header_unsplash_12.jpg"
permalink: "talks/archive/"
---

{% assign posts_future = site.posts | where_exp: "post", "post.date > site.time and post.tags contains 'published'" %}
{% assign posts_past = site.posts | where_exp: "post", "post.date <= site.time and post.tags contains 'published'" %}
<div id="talks-index" class="row">

	<div class="small-12 columns t30">
		<h1>{{ page.title }}</h1>
		{% if page.teaser %}<p class="teaser">{{ page.teaser }}</p>{% endif %}

		<h2> Upcoming Talks </h2>

		<br>

		<dl class="accordion" data-accordion>
			{% assign counter = 1 %}
			{% for post in posts_future limit:1000 %}
			<dd class="accordion-navigation">
				<a href="#panel{{ counter }}"><span class="iconfont"></span> {{ post.date | date: "%B %d, %Y" }} › 
				<strong>{{ post.speaker }}</strong> › {{ post.title }}
				</a>
				<div id="panel{{ counter }}" class="content">
					{% if post.meta_description %}{{ post.meta_description | strip_html | escape }}{% elsif post.teaser
					%}{{ post.teaser | strip_html | escape }}{% endif %}
					<a href="{{ site.url }}{{ site.baseurl }}{{ post.url }}"
						title="Read {{ post.title | escape_once }}"><strong>{{ site.data.language.read_more
							}}</strong></a><br><br>
				</div>
			</dd>
			{% assign counter=counter | plus:1 %}
			{% endfor %}
		</dl>

		<h2> Previous Talks </h2>

		<br>

		<dl class="accordion" data-accordion>
			{% assign counter2 = 1001 %}
			{% for post in posts_past limit:1000 %}
			<dd class="accordion-navigation">
				<a href="#panel{{ counter2 }}"><span class="iconfont"></span> {{ post.date | date: "%B %d, %Y" }} › 
				<strong>{{ post.speaker }}</strong> › {{ post.title }}
				</a>
				<div id="panel{{ counter2 }}" class="content">
					{% if post.meta_description %}{{ post.meta_description | strip_html | escape }}{% elsif post.teaser
					%}{{ post.teaser | strip_html | escape }}{% endif %}
					<a href="{{ site.url }}{{ site.baseurl }}{{ post.url }}"
						title="Read {{ post.title | escape_once }}"><strong>{{ site.data.language.read_more
							}}</strong></a><br><br>
				</div>
			</dd>
			{% assign counter2=counter2 | plus:1 %}
			{% endfor %}
		</dl>
	</div><!-- /.small-12.columns -->
	</div><!-- /.row -->