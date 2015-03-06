## direct subseting of data
ed <- subset( edata, as.Date(edata$Date, format='%d/%m/%Y') >= as.Date('2007-02-01', format='%Y-%m-%d'))
ed <- subset( ed, as.Date(ed$Date, format='%d/%m/%Y') <= as.Date('2007-02-02', format='%Y-%m-%d'))

## develop the x-axis data
hello <- paste(ed$Date, ed$Time)
library(lubridate)
hello1 <- dmy_hms(hello)

## create plot - open file before & close file after
png("plot3.png", width=480, height=480, units="px")

plot(hello1, ed$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = c(1,1,1) )
points(hello1, ed$Sub_metering_2, col="red", type="l")
points(hello1, ed$Sub_metering_3, col="blue", type="l")
dev.off()