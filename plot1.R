## Unzip file
    unzip("C:/Users/Steve/Desktop/Coursera/household_power_consumption.zip")
    
## read in data
    powerdata <- read.table("C:/Users/Steve/Desktop/Coursera/household_power_consumption.txt", sep=";", header = TRUE, stringsAsFactors = FALSE)

## select dates
    powerdata <- subset(powerdata, Date == "1/2/2007" | Date == "2/2/2007")
    
## Create first plot (histogram)
    hist(as.numeric(powerdata$Global_active_power), xlim = range(0:6), col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
    
## export plot to png file
    dev.copy(png, file = "plot1.png")
    dev.off()
    
    




