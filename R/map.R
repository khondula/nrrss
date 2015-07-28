devtools::install_github("rstudio/leaflet")
install.packages('tidyr')
library(leaflet)
library(tidyr)
# map

# geo_indicator G = lat/long
# geo_indicator U = UTM

# merge geographic table and project activities table on nrrss_number
qGeo = "SELECT * FROM geographic_table;"
geographic_table <- dbGetQuery(con, qGeo)
projects_geo <- inner_join(geographic_table, proj_activities_table, by="nrrss_number")
projects_geo$LATITUDE <- unite(lat_deg, lat_min, lat_sec, remove=FALSE)

head(projects_geo)
# m <- leaflet() %>%
#   addTiles() %>%  # Add default OpenStreetMap map tiles
#   addMarkers(lng=174.768, lat=-36.852)
# m  # Print the map
# 

leaflet() %>% addTiles() %>% setView(lat = 38.976816, lng = -76.502990, zoom = 7) %>%
  addMarkers(data = projects_geo, lat = ~ Latitude, lng = ~ Longitude,popup = atlanta$Name) %>%
  addPopups(lat = 38.976816, lng = -76.502990, 'Home of S-E Synthesis, <b>SESYNC</b>')
  