## Read data
edata <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings = "?")

## direct subseting of data
ed <- subset( edata, as.Date(edata$Date, format='%d/%m/%Y') >= as.Date('2007-02-01', format='%Y-%m-%d'))
ed <- subset( ed, as.Date(ed$Date, format='%d/%m/%Y') <= as.Date('2007-02-02', format='%Y-%m-%d'))

## develop the x-axis data
hello <- paste(ed$Date, ed$Time)
library(lubridate)
hello1 <- dmy_hms(hello)

## create plot - open file before & close file after
png("plot2.png", width=480, height=480, units="px")
plot(hello1, ed$Global_active_power, type='l', xlab="", ylab="Global Active Power (kilowatts)")
dev.off()





