png("plot3.png")

plot(power$Time, power$Sub_metering_1,
     type = "n",
     xlab = "",
     ylab = "Energy sub metering")

lines(power$Time, power$Sub_metering_1)
lines(power$Time, power$Sub_metering_2, col = "red")
lines(power$Time, power$Sub_metering_3, col = "blue")

legend("topright", legend = names(power)[7:9], lty = 1, col = c("black", "red", "blue"))

dev.off()
