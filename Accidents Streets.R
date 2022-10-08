library(dplyr)

accidents <- read.csv("/Users/julius.schmid/Desktop/Fundamentals of Big Data Analytics/Project/Files/US_Accidents_Dec20_updated.csv")
miami_accidents <- filter(accidents, City == "Miami", State == "FL")

tail(sort(table(miami_accidents$Street)),10)