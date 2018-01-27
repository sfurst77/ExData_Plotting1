## Unzip file
unzip("C:/Users/Steve/Desktop/Coursera/household_power_consumption.zip")

## read in data
powerdata <- read.table("C:/Users/Steve/Desktop/Coursera/household_power_consumption.txt", sep=";", header = TRUE, stringsAsFactors = FALSE)

## select dates
powerdata <- subset(powerdata, Date == "1/2/2007" | Date == "2/2/2007")

## Combine Date & Time into one character string powerdata$Date.Time
powerdata$Date.Time <- paste(powerdata$Date, powerdata$Time)

## Parse Date.Time into Posixlt
powerdata$Date.Time <- strptime(powerdata$Date.Time, format = '%d/%m/%Y %H:%M:%S')

## Create plot3
    plot(powerdata$Date.Time, powerdata$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "n")
    lines(powerdata$Date.Time, powerdata$Sub_metering_1)
    lines(powerdata$Date.Time, powerdata$Sub_metering_2, col = "red")
    lines(powerdata$Date.Time, powerdata$Sub_metering_3, col = "blue")
    legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

##export plot to png file
    dev.copy(png, file = "plot3.png")
    dev.off()
    