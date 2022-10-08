# Time Influence on Public Transportation

# Import necessary libraries
library(ggplot2)
library(tidyverse)
library(dplyr)

# Read csv file
metro <- read.csv("/Users/julius.schmid/Desktop/Fundamentals of Big Data Analytics/Project/Files/Metro_Interstate_Traffic_Volume.csv")


# Split date_time column into the columns year, month, day, and time
metro <- separate(data = metro, col = date_time, into = c("date", "time"), sep = " ")
metro <- separate(data = metro, col = date, into = c("year", "month", "day"), sep = "-")


# Create barchart to visualize the hourly traffic volume on 05/18/2013 (random selection)
metro_hourly <- filter(metro, year == "2013", month == "05", day == "18")
ggplot(data = metro_hourly) +
  geom_col(mapping = aes(x = reorder(time, desc(time)), y = traffic_volume)) +
  labs(title = "Hourly Traffic Volume on 18th of May 2013",
       x = "Time", 
       y = "Volume") + 
  coord_flip()


# Create barchart to visualize the daily traffic volume in May 2013
metro_daily <- filter(metro, year == "2013", month == "05", time == "12:00:00")
ggplot(data = metro_daily) +
  geom_col(mapping = aes(x = reorder(day, desc(day)), y = traffic_volume)) +
  labs(title = "Daily Traffic Volume in May 2013",
       subtitle = "Measured every day at 12 pm",
       x = "Day", 
       y = "Volume") + 
  coord_flip()


# Create boxplots to visualize monthly traffic volume in 2013
metro_monthly <- filter(metro, year == "2013", time == "12:00:00")
ggplot(data = metro_monthly) +
 geom_boxplot(mapping = aes(x = month, y = traffic_volume)) +
  labs(title = "Monthly Traffic Volume in 2013",
       subtitle = "Measured every day at 12 pm",
       x = "Month", 
       y = "Volume")


# Create boxplots to visualize yearly traffic volume (availabe data ranges from 2012 - 2018)
metro_yearly <- filter(metro, time == "12:00:00")
ggplot(data = metro_yearly) +
  geom_boxplot(mapping = aes(x = year, y = traffic_volume)) +
  labs(title = "Yearly Traffic Volume",
       subtitle = "Measured every day at 12 pm",
       x = "Year", 
       y = "Volume")            
