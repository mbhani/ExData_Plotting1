#Exploratory Data Analysis CLass Programming Assignment#1 4/13/2017

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
# Script to load the full data set and extract only the two days of Feb 1&2 2007       #
# First calculate a rough estimate of how much memory the dataset will require in      #
# memory before reading into R:                                                        #
# Memory required = no. of column * no. of rows * 8 bytes/numeric                      #
# 2075259 rows * 9 columns * 8 = 149418648 bytes = 142.4967 MB                         #
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#

library(dplyr)
ExData <- read.table("./data/household_power_consumption.txt", header = TRUE, sep=";", 
                     colClasses = c("character", "character", rep("numeric",7)), na = "?")
print(object.size(ExData))# show memory usage for the data in Bytes
print(names(ExData))
print(dim(ExData)) # (2075259 x 9)
print(class(ExData$Date)) 
ExData <- na.omit(ExData) # remove all missing values
print(dim(ExData)) # (2049280 x 9) after removing missing data
# Format Date and Time variables to Date class and Time class
NewTime <- paste(ExData$Date, ExData$Time)
ExData$Time <- strptime(NewTime, format = "%d/%m/%Y %H:%M:%S")
ExData$Date <- as.Date(ExData$Date, format = "%d/%m/%Y") #format Date
print(class(ExData$Date))
print(class(ExData$Time))
# Extract Feb1 & Feb2, 2007 data
ExDataDay1 <- subset(ExData, ExData$Date == as.Date("2007-02-01"))
ExDataDay2 <- subset(ExData, ExData$Date == as.Date("2007-02-02"))
ExData2Days <- rbind(ExDataDay1, ExDataDay2)
print(dim(ExData2Days)) # (2880 x 9)

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#