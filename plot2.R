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

## Create plot2
    plot(powerdata$Date.Time, powerdata$Global_active_power, type = "n", xlab = "Date.Time", ylab = "Global Active Power (kilowatts)")
    lines(powerdata$Date.Time, powerdata$Global_active_power)

## export plot to png file
    dev.copy(png, file = "plot2.png")
    dev.off()
    
    
  


