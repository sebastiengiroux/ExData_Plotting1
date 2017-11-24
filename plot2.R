source("load_data.R")

dev.new();

with(data, plot(
  datetime,
  Global_active_power, 
  type = "l", 
  ylab = "Global Active Power (kilowatts)",
  xlab = ""
))


dev.copy(png, "plot2.png")
dev.off()
