#Exploratory Data Analysis CLass Programming Assignment#1 4/13/2017

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
# This is plot1.R script to construct plot1.png                                        #
# script assume you have loaded text file data into your working directory under:      #
# "./data/household_power_consumption.txt"                                             #
# First run "Load_ExData.R" script in RStudio, should be in same working directory     #
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
source("Load_ExData.R") #load data 
hist(ExData2Days$Global_active_power, col = "red", main = paste("Global Active Power"), 
xlab = "Global Active Power (kilowatts)", breaks = 12, ylim = c(0, 1200))
dev.copy(png, file = "plot1.png", 
         width = 480, height = 480, units = "px", bg = "transparent")
dev.off() #close the png file device

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++