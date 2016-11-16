# THE FOLLOWING CODE WAS USED TO TAKE MONTHLY GLOBAL LAND TEMPERATURES BY COUNTRY AND
# OUTPUT ONLY JULY TEMPERATURES FOR THE US AND GREENLAND SINCE 1850

setwd('/Users/blemieux/Documents/Udacity/Viz/climate')
library(xlsx)
library(tidyr)
library(dplyr)
library(lubridate)
library(reshape2)

climate <- read.csv('GlobalLandTemperaturesByCountry.csv')
climate <- na.omit(climate)
head(climate)
names(climate)

df <- subset(climate, month(dt) == 7 & year(dt) > 1850 & 
               (Country == 'Greenland' | Country == 'United States'))

head(df)

colnames(df)[1] <- 'Year'


df$Year <- year(df$Year)

new <- dcast(df, Year ~ Country, value.var='AverageTemperature')

head(new)
new$USVar <- new$`United States` - mean(new$`United States`)
new$GreenlandVar <- new$Greenland - mean(new$Greenland)

#new[2:3] <- NULL # Uncomment to remove again

colnames(new)[2] <- 'United States'
colnames(new)[3] <- 'Greenland'

new <- gather(new, 'Country', 'Average Temperature', 2:3)

head(new,20)

write.csv(new, "july_temps.csv", row.names=FALSE)
