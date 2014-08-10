#### Coursera Exploratory Data Analysis Project 1 - Plot 4

data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")  #loads dataset

sub <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007") #subset data
sub$Date <- strptime(paste(sub$Date, sub$Time), "%d/%m/%Y %H:%M:%S") #converts/combines date and time

par(mfrow=c(2,2)) #set plot parameters

with(sub, plot(Date, Global_active_power, type="l", xlab="", ylab="Global Active Power"))

with(sub, plot(Date, Voltage, type="l", xlab="", ylab="Voltage", sub="datetime"))

plot(sub$Date, sub$Sub_metering_1, type="n", xlab="", ylab="Engery sub metering")
lines(sub$Date, sub$Sub_metering_1)
lines(sub$Date, sub$Sub_metering_2, col="red")
lines(sub$Date, sub$Sub_metering_3, col="blue")
legend("topright", bty="n", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=1, col=c("black","red","blue"))

with(sub, plot(Date, Global_reactive_power, type="l", xlab="", sub="datetime"))

dev.copy(png, file = "plot4.png", height=480, width=480)  # Copy plot to a PNG file
dev.off()
