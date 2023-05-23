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
  title: "26th April: A Study of the Random Recursive Tree"
  url: 'https://pg-prob-sem.github.io/random_graphs/bas/'
  image: bas.jpg
  text: 'Bas Lodewijks'
  
widget2:
  title: "31st May: Speed Results on the N-particle Branching Random Walk"
  url: 'https://pg-prob-sem.github.io/branching_processes/zsofia/'
  image: zsofia.jpg
  text: 'Zsófia Talyigás'
  

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

