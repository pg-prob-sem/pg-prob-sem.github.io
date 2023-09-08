## load htmlwidgets to save map widget
library(htmlwidgets)

## prep and plot
predoc %>% 
  geocode(address = Location, method = 'osm') %>% ## gecode locations
  mutate(lab = str_c(Institution, Name,
                     str_c('<a href="', URL, '" target="_PARENT">Program Info</a>'),
                     sep = '<br>')) %>% # paste fields into popup text
  leaflet() %>% # create leaflet map widget
  addProviderTiles(providers$CartoDB.Positron) %>% # add muted palette basemap
  addMarkers(lng = ~ long, lat = ~ lat, popup = ~ lab) %>% # add markers with popup text
  saveWidget(here::here('/files/html/posts', 'predoc_map.html')) # save map widget
