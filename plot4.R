source("load_data.R")

dev.new()

par(mfrow = c(2,2))

#################################
# Plot 1,1
with(data, plot(
  datetime,
  Global_active_power, 
  type = "l", 
  ylab = "Global Active Power",
  xlab = ""
))

#################################
# Plot 1,2
with(data, plot(
  datetime,
  Voltage, 
  type = "l", 
))

#################################
# Plot 2,1
with(data, plot(
  x = datetime,
  y = Sub_metering_1,
  type = "l",
  col = "black",
  ylab = "Energy sub metetering",
  xlab = ""
))

with(data, points(
  x = datetime, 
  y = Sub_metering_2,
  type = "l",
  col = "red"
))

with(data, points(
  x = datetime, 
  y = Sub_metering_3,
  type = "l",
  col = "blue"
))

legend(
  "topright", 
  col = c("black","red", "blue"), 
  legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
  lty=c(1,1),
  bty = "n" 
)

#################################
# Plot 2,2
with(data, plot(
  datetime,
  Global_reactive_power, 
  type = "l", 
))

dev.copy(png, "plot4.png")
dev.off()
