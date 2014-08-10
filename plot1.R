#### Coursera Exploratory Data Analysis Project 1 - Plot 1

data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")  #loads dataset

sub <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007") #subset data

with(sub, hist(Global_active_power, col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power"))

dev.copy(png, file = "plot1.png", height=480, width=480)  # Copy plot to a PNG file
dev.off()