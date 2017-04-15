#Exploratory Data Analysis CLass Programming Assignment#1 4/13/2017

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
# This is plot3.R script to construct plot3.png                                        #
# script assume you have loaded text file data into your working directory under:      #
# "./data/household_power_consumption.txt"                                             #
# First run "Load_ExData.R" script in RStudio, should be in same working directory     #
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
source("Load_ExData.R") #load data 

png(filename = "plot3.png", width = 480, height = 480, units = "px", bg = "transparent")
plot(ExData2Days$Time,ExData2Days$Sub_metering_1, type = "l", xlab = "", 
     ylab = "Energy sub metering", col = "black")
lines(ExData2Days$Time, ExData2Days$Sub_metering_2,type = "l", xlab = "", col = "red")
lines(ExData2Days$Time, ExData2Days$Sub_metering_3,type = "l", xlab = "", col = "blue")
legend("topright", col = c("black", "red", "blue"), lwd = 1, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off() #close the png file device

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++