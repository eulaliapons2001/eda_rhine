#QUESTION1
#how big is the rhine catchment area?
#185,000 km^2

#QUESTION2
catchment_area <- 185000*1000*1000 #m^2
precipitation_hour <- 0.5 #mm/h
precipitation_day <- precipitation_hour * 24 / 1000 #m/day
catchment_water <- precipitation_day * catchment_area #m^3/day
average_runoff <- catchment_water / (24 * 60 * 60)
average_runoff
#25694.44 m^3/s

#QUESTION4
#a) 
#an increase in greenhouse gases will have an increase in global average temperature
#and hence it will affect the hydrological cycle because there will be changes in 
#precipitation and evapotranspiration

#b) 
#when they estimate the peak flows, they assume that the number of days with precipitation
#remains unchanged, it is also assumed that there is an increase of CO2 in the atmosphere in the 
#future and temperature rises in different scenarios

#c) 
#impacts on water resources and water management that lead to socio-economic impacts
#such as winter sports in the alps, flood defense, inland navigation, hydropower generation
#water availability for industry, agriculture and and domestic use and floodplain development

#d) 
#there is one article that was published in 2004 and they were already talking about
#increasing winter rainfall and increased flood probability as well as land use changes also 
#affect the runoff of the Rhine
#https://doi.org/10.1002/rra.775

#e)
#largest floods https://doi.org/10.1080/02626667.2011.583613
#low conditions https://www.iksr.org/fileadmin/user_upload/DKDM/Dokumente/Fachberichte/EN/rp_En_0248.pdf
