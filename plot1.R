# This is the source code for plot1.R and part of the coursera Exploratory Data Analysis course Assignment in week 1

# assign and read data
dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# subset required data
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(subSetData$Global_active_power)

# create the required histogram
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

# create png-file of that histogram
dev.copy(png,'plot1.png', width=480,height=480)
dev.off()


