rm(list=ls())

suppressPackageStartupMessages( library(dplyr) )
suppressPackageStartupMessages( library(readr) )
suppressPackageStartupMessages( library(ggplot2) )


IN_W_LEAP_YEAR_2001_2018 <- read_csv("~/Documents/spock/CAMINHONEIROS/ANP/IN_W/data/raw-data/IN_W_LEAP_YEAR_2001-2018.csv",
                                     col_types = cols(MES = col_character()))


## FILTER
gas <- dplyr::filter(IN_W_LEAP_YEAR_2001_2018, PRODUTO == "GASOLINA")
etanol <- dplyr::filter(IN_W_LEAP_YEAR_2001_2018, PRODUTO == "ETANOL_HIDRATADO")
diesel <- dplyr::filter(IN_W_LEAP_YEAR_2001_2018, PRODUTO == "DIESEL")
diesel.s10 <- dplyr::filter(IN_W_LEAP_YEAR_2001_2018, PRODUTO == "DIESEL_S10")

saveRDS(IN_W_LEAP_YEAR_2001_2018, 'IN_W_LEAP_YEAR_2001_2018.rds')


## READ from RDS
IN_W_LEAP_YEAR_2001_2018 <- readRDS('IN_W_LEAP_YEAR_2001_2018.rds')
dd <- IN_W_LEAP_YEAR_2001_2018
rm(IN_W_LEAP_YEAR_2001_2018)
gas <- dplyr::filter(dd, PRODUTO == "GASOLINA")
etanol <- dplyr::filter(dd, PRODUTO == "ETANOL_HIDRATADO")
diesel <- dplyr::filter(dd, PRODUTO == "DIESEL")
diesel.s10 <- dplyr::filter(dd, PRODUTO == "DIESEL_S10")

