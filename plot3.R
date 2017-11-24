source("load_data.R")

dev.new();

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
  lty=c(1,1)
)

dev.copy(png, "plot3.png")
dev.off()
