# If the zip file does not exist in the working directory, download and unzip it.
fileUrl = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
if (!file.exists("household_power_consumption.zip")) {
  download.file(fileUrl, "household_power_consumption.zip")
  unzip("household_power_consumption.zip")
}

power = read.table("household_power_consumption.txt", header = TRUE, na.strings = "?", sep = ";")
power$Date = as.Date(as.character(power$Date), format = "%d/%m/%Y")
power = power[power$Date == as.Date("2007-02-01") | power$Date == as.Date("2007-02-02"), ]
power$Time = strptime(paste(power$Date, power$Time), format = "%Y-%m-%d %H:%M:%S")