#Exploratory Data Analysis CLass Programming Assignment#1 4/13/2017

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
# This is plot2.R script to construct plot2.png                                        #
# script assume you have loaded text file data into your working directory under:      #
# "./data/household_power_consumption.txt"                                             #
# First run "Load_ExData.R" script in RStudio, should be in same working directory     #
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
source("Load_ExData.R") #load data 

png(filename = "plot2.png", width = 480, height = 480, units = "px", bg = "transparent")
plot(ExData2Days$Time,ExData2Days$Global_active_power, type = "l", xlab = "", 
     ylab = "Global Active Power (kilowatts)")
dev.off() #close the png file device

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++