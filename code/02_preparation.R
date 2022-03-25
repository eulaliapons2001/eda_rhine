library(data.table)
install.packages("ggplot2")
library(ggplot2)
runoff_stations <- readRDS('./data/runoff_stations_raw.rds')
runoff_day <- readRDS('./data/runoff_day_raw.rds')
rees_runoff_day <- runoff_day[sname == 'REES']
##plot the function
ggplot(data = rees_runoff_day) +
  geom_line(aes(x = date, y = value))
ggplot(data = rees_runoff_day) +
  geom_point(aes(x = date, y = value))
ggplot(data = rees_runoff_day, 
       aes(x = date, y = value)) +
  geom_point() +
  geom_line()
rees_dier_runoff_day <- runoff_day[sname == 'REES' | sname == 'DIER']
ggplot(data = rees_dier_runoff_day) +
  geom_line(aes(x = date, y = value, col = sname))