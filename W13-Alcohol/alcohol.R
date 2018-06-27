rm(list=ls())
library(ggplot2)
library(ggmap)
library(maps)
library(dplyr)
setwd("~/Documents/GitHub/TidyTuesday/W13-Alcohol")

worldmap <- map_data("world")

alcohol <- read.csv("week13_alcohol_global.csv")
alcohol <- rename(alcohol, "region" = 'country')
beer_color <- lacroix_palette("PommeBaya", n = 193, type = "continuous")
wine_color <- lacroix_palette("CranRaspberry", n = 193, type = "continuous")
spirit_color <- lacroix_palette("Coconut", n = 193, type = "continuous")


alcoholmapdata <- inner_join(worldmap, alcohol, by = 'region')

beermap <- ggplot() + geom_polygon(data = alcoholmapdata, aes(x=long, y = lat, group = group, fill = beer_servings)) + 
  coord_fixed(1.3) + theme(axis.text = element_blank(), axis.line = element_blank(), axis.ticks = element_blank(), panel.border = element_blank(), panel.background = element_blank(), panel.grid = element_blank(), axis.title = element_blank()
  ) + scale_fill_gradientn(colours = beer_color)

winemap <- ggplot() + geom_polygon(data = alcoholmapdata, aes(x=long, y = lat, group = group, fill = wine_servings)) + 
  coord_fixed(1.3) + theme(axis.text = element_blank(), axis.line = element_blank(), axis.ticks = element_blank(), panel.border = element_blank(), panel.background = element_blank(), panel.grid = element_blank(), axis.title = element_blank()
  ) + scale_fill_gradientn(colours = wine_color)

spiritmap <- ggplot() + geom_polygon(data = alcoholmapdata, aes(x=long, y = lat, group = group, fill = spirit_servings)) + 
  coord_fixed(1.3) + theme(axis.text = element_blank(), axis.line = element_blank(), axis.ticks = element_blank(), panel.border = element_blank(), panel.background = element_blank(), panel.grid = element_blank(), axis.title = element_blank()
  ) + scale_fill_gradientn(colours = spirit_color)
