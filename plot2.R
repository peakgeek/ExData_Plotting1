#### Coursera Exploratory Data Analysis Project 1 - Plot 2

data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")  #loads dataset

sub <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007") #subset data
sub$Date <- strptime(paste(sub$Date, sub$Time), "%d/%m/%Y %H:%M:%S") #converts/combines date and time

with(sub, plot(Date, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))

dev.copy(png, file = "plot2.png", height=480, width=480)  # Copy plot to a PNG file
dev.off()