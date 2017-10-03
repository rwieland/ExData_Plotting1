png("plot2.png")

plot(power$Time, power$Global_active_power,
     type = "n",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
lines(power$Time, power$Global_active_power)

dev.off()
