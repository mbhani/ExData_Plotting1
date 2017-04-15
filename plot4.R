#Exploratory Data Analysis CLass Programming Assignment#1 4/13/2017

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
# This is plot4.R script to construct plot4.png                                        #
# script assume you have loaded text file data into your working directory under:      #
# "./data/household_power_consumption.txt"                                             #
# First run "Load_ExData.R" script in RStudio, should be in same working directory     #
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
source("Load_ExData.R") #load data 

png(filename = "plot4.png", width = 480, height = 480, units = "px", bg = "transparent")
par(mfrow = c(2,2), mar = c(5, 5, 2, 2))

#topleft plot
plot(ExData2Days$Time,ExData2Days$Global_active_power, type = "l", xlab = "", 
     ylab = "Global Active Power")

#top right plot
plot(ExData2Days$Time,ExData2Days$Voltage, type = "l", xlab = "datetime",ylab = "Voltage")

#bottom left plot
plot(ExData2Days$Time,ExData2Days$Sub_metering_1, type = "l", xlab = "", 
     ylab = "Energy sub metering", col = "black")
lines(ExData2Days$Time, ExData2Days$Sub_metering_2,type = "l", xlab = "", col = "red")
lines(ExData2Days$Time, ExData2Days$Sub_metering_3,type = "l", xlab = "", col = "blue")
legend("topright", bty = "n", col = c("black", "red", "blue"), lwd = 1, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#bottom right plot
plot(ExData2Days$Time,ExData2Days$Global_reactive_power, type = "l", xlab = "datetime", 
     ylab = "Global_reactive_power")

dev.off() #close the png file device

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++