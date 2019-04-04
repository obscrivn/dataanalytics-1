

setwd("E:/Box Sync/HarrisburgU/Github/dataanalytics/FinalProject/Data")

# Reading libraries
library(dplyr); library(ggplot2); library(readr)

# Importing data set
gapminder <- read_csv("gapminder.csv")
bikeVendors <- read_csv("bikeVendors.csv")
# Melting data
bikeVendors2 <- melt(bikeVendors, id.vars = 1:5, value.name = "share")
# Renaming columns
colnames(bikeVendors2) <- c("model", "category1", "category2", "frame", "price", "vendor", "share")
