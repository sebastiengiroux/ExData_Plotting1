if (!exists("dplyr")) {
  library(dplyr)
  library(lubridate)
}

if (!file.exists("household_power_consumption.txt")) {
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "dataset.zip")
  unzip("dataset.zip")
  file.remove("dataset.zip")
}

if (!exists("data", inherits = FALSE)) {
  data <- read.csv(
    "household_power_consumption.txt", 
    stringsAsFactors = FALSE, 
    sep = ";",
    na.strings='?',
    colClasses=c("character","character", rep("numeric",7))
  )  
  
  data <-
    data %>%
    mutate( datetime = dmy_hms(paste(data$Date, data$Time, sep = " ")) ) %>%
    filter(year(datetime) == 2007 & month(datetime) == 2 & (day(datetime) == 1 | day(datetime) ==2)) %>%
    select(-(1:2))
}
