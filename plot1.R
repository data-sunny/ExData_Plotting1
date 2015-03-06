## Read data
edata <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings = "?")

## direct subseting of data
ed <- subset( edata, as.Date(edata$Date, format='%d/%m/%Y') >= as.Date('2007-02-01', format='%Y-%m-%d'))
ed <- subset( ed, as.Date(ed$Date, format='%d/%m/%Y') <= as.Date('2007-02-02', format='%Y-%m-%d'))

## create plot - open file before & close file after
png("plot1.png", width=480, height=480, units="px")
hist(ed$Global_active_power, col="red", xlab="Global Active Power (kilowatts)",
     ylab = "Frequency", main = "Global Active Power")
dev.off()
## copy plot on screen to png file and close - run quartz() on Macs before plotting
#dev.copy(png, file="plot2.png")
#dev.off()