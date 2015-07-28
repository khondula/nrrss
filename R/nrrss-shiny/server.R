shinyServer(function(input,output,session){
  
 # points <- 
  
  output$mymap <- renderLeaflet({
    leaflet() %>%
      setView(lat = 38.976816, lng = -76.502990, zoom = 7) %>%
      addProviderTiles("Stamen.TonerLite", options = providerTileOptions(noWrap = TRUE)) %>%
      addMarkers(data = projects_geo, lat = ~ LATITUDE_dd, lng = ~ LONGITUDE_dd,
                 popup = projects_geo$nrrss_number)
    
  })
})