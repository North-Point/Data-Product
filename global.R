
#####
library(dplyr)
setwd("/Users/North_Point/Dropbox/MOOC/Data_Science/Data_Product")
raw.data = read.csv("uber.csv")
raw.data = mutate(raw.data, base = factor(x = raw.data$dispatching_base_number, levels = c("B02512", "B02598", "B02617", "B02682", "B02764", "B02765", "B02835", "B02836"), labels = c("Unter", "Hinter", "Weiter", "Schmecken", "Danach-NY", "Grun", "Dreist", "Drinnen")))
raw.data$date  = strptime(raw.data$date, "%m/%d/%Y")
data = raw.data
#####

