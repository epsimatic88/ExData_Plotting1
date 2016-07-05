# This is the source code for plot2.R and part of the coursera Exploratory Data Analysis course Assignment in week 1

# assign and read data
dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#subset required data
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# remodel data
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)

# create plot
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

# create png-file of that plot
dev.copy(png,'plot2.png', width=480,height=480)
dev.off()