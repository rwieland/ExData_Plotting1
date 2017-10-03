png("plot4.png")

par(mfrow = c(2,2))

plot(power$Time, power$Global_active_power,
     type = "n",
     xlab = "",
     ylab = "Global Active Power")

lines(power$Time, power$Global_active_power)

plot(power$Time, power$Voltage,
     type = "n",
     xlab = "datetime",
     ylab = "Voltage")

lines(power$Time, power$Voltage)

plot(power$Time, power$Sub_metering_1,
     type = "n",
     xlab = "",
     ylab = "Energy sub metering")

lines(power$Time, power$Sub_metering_1)
lines(power$Time, power$Sub_metering_2, col = "red")
lines(power$Time, power$Sub_metering_3, col = "blue")

legend("topright", 
       legend = names(power)[7:9], 
       lty = 1, 
       col = c("black", "red", "blue"),
       bty = "n")

plot(power$Time, power$Global_reactive_power,
     type = "n",
     xlab = "datetime",
     ylab = "Global_reactive_power")

lines(power$Time, power$Global_reactive_power)

dev.off()