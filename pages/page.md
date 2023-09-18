---
layout              : page
show_meta           : false
title               : "Presenting results from an arbitrary number of models"
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

``` r
knitr::opts_knit$set(base.dir = "/pg-prob-sem.github.io/", base.url = "/")
knitr::opts_chunk$set(fig.path = "images/")
```

``` r
# Define cars vector with 5 values
cars <- c(1, 3, 6, 4, 9)

# Create a pie chart for cars
jpeg(file="saving_plot1.jpeg")
pie(cars)
dev.off()
```
