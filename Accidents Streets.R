# Return Miami streets with the most accidents


# Import necessary library
library(dplyr)

# Read csv file containing accident data from all over the world
accidents <- read.csv("/Users/julius.schmid/Desktop/Fundamentals of Big Data Analytics/Project/Files/US_Accidents_Dec20_updated.csv")

# Filter all accidents that occured in Miami (FL)
miami_accidents <- filter(accidents, City == "Miami", State == "FL")

# Return the 10 streets where most accidents happened, together with the number of accidents
tail(sort(table(miami_accidents$Street)),10)