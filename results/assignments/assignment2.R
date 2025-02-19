library(data.table)
library(ggplot2)
runoff_stations <- readRDS('./data/runoff_stations_raw.rds')
dt <- runoff_stations[, .(sname, area, altitude)]
head(dt)
##2 and 3
runoff_stations [, z2 := abs(rnorm(20))]
runoff_stations[, c('sname', 'area', 'altitude')]
ggplot(data = runoff_stations, aes(x = area, y = altitude, col = size)) +
  geom_point(aes(colour = z2)) +
  geom_text(aes(area, altitude, label = sname, colour = area)) 

ggplot(data = runoff_stations, aes(x = lon, y = lat, col = altitude)) +
  geom_point() + 
  geom_text(label = runoff_stations$sname) + 
  scale_color_gradient(low = 'dark green', high = 'brown') +
  theme_bw()
##4
runoff_station_years <- runoff_stations[, .(sname, start, end)]
ggplot(data = runoff_station_years, aes(x = start, y = sname)) +
  geom_segment(aes(xend = end, yend = sname))

 

