dir.create('./data')
dir.create('./data/raw')
dir.create('./results')
dir.create('./results/figures')
dir.create('./docs')
install.packages("data.table")
library(data.table)
runoff_dt<-setDT(runoff_dt)
runoff <- 130 #m3/s 
runoff_ts <- data.frame(time = as.Date(1:90, origin = '2020/12/31'), 
                        value = sample(c(130, 135, 140), 
                                       size = 90, replace = T))
runoff_dt<-data.table(runoff_ts)
runoff_dt<-setDT(runoff_ts)
summary(runoff_dt)
runoff_dt[value>130]
runoff_dt[value > 130, mean(value)]
runoff_dt[value > 130, mean(value), by = month(time)]
runoff_dt[,mon:=month(time)]
runoff_dt
mon_mean<-runoff_dt[,mean(value),by=mon]  
runoff_dt
mon_mean
runoff_month<-runoff_dt[,.(mon,mon_mean)]
runoff_month
unique(runoff_month)
saveRDS(runoff_dt,file="./data/dt_example.rds.")
gitcreds::gitcreds_set()
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install.packages(("gitcreds"))