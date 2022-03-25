library(data.table)

runoff_stations <- readRDS('./data/runoff_stations_raw.rds')
fread('./data/raw/runoff_day/6335020_Q_Day.Cmd.txt')
raw_path <- './data/raw/runoff_day/'
fnames <- list.files(raw_path)
n_station <- length(fnames)
id_length <- 7
runoff_day_raw <- data.table()
id_sname <- runoff_stations[, .(id, sname)]
file_count <- 1
temp_dt <- fread(paste0(raw_path, fnames[file_count]))
###extract station_id and add it to temp_dt as a new column
station_id <- substr(fnames[file_count], 1, id_length)
temp_dt <- cbind(id = factor(station_id), temp_dt)
###merge tempt_dt with id_name
temp_dt <- id_sname[temp_dt, on = 'id']
##attach temp_dt to the end of runoff_day_raw
runoff_day_raw <- rbind(runoff_day_raw, temp_dt)
##we remove the column hour and minute bc we don't need it
runoff_day_raw[, 'hh:mm' := NULL]
##we change names
colnames(runoff_day_raw)[3:4] <- c('date', 'value')
runoff_day_raw[, date := as.Date(date)]
runoff_day_raw

