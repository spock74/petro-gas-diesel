#
# HOME
# /Users/moraes/Documents/spock/CAMINHONEIROS/ANP/d
# 

library(readr)
library(dplyr)    


#
d_2004_a_2012 <- read_csv("d-maio-de-2004-a-dezembro-de-2012.csv", 
                                              col_types = cols(DATA_FINAL = col_date(format = "%m/%d/%y"), 
                                                               DATA_INICIAL = col_date(format = "%m/%d/%y")))

#
d_2013_a_2018 <- read_csv("d-a-partir-de-2013-SEMANAL_BRASIL-DESDE_2013.csv", 
                          col_types = cols(DATA_FINAL = col_date(format = "%m/%d/%y"), 
                                           DATA_INICIAL = col_date(format = "%m/%d/%y")))

#
glimpse(d_2004_a_2012)
glimpse(d_2013_a_2018)


#
dd <- rbind(d_2004_a_2012, d_2013_a_2018)

saveRDS(dd, 'semanal_2004')

