source("load_data.R")

dev.new();

with(data, hist(
  Global_active_power, 
  col = "red", 
  main = "Global Active Power",
  xlab = "Global Active Power (kilowatts)"
))

dev.copy(png, "plot1.png")
dev.off()
