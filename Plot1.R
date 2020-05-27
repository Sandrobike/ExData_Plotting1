# Peer grade assigfnment Plot1

library(data.table)
library(dplyr)
library(lubridate)

## Download and unzip external data
url_data <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url_data, destfile = "power.zip", method = "curl")
unzip("power.zip")

## Only the required data related to 1st and 2nd February 2007 are stored in data frame 
## 'power_df'. Furthermore the first two columns 'Date' and 'Time' are merged in 
## a single column called 'Time'
power_df <- fread("household_power_consumption.txt", data.table = FALSE) %>% 
            filter((Date == "1/2/2007") | (Date == "2/2/2007")) %>%
            mutate(Time = paste(Date,Time)) %>% select(-Date)

## The first column is converted in Date/Time format according POSIXct standard
power_df$Time <- dmy_hms(power_df$Time)

## The remaining columns are converted in numeric format
for (i in 2:7) {
  power_df[,i] <- as.numeric(power_df[,i])
}

## open a png device
png("plot1.png", width = 480, height = 480, units = "px", bg = "transparent")
## Plot 1
with(power_df, hist(Global_active_power, main = "Global active power", col = "red",
                    xlab = "Global active power (kilowatts)"))
dev.off()





