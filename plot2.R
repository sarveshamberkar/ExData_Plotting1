#prgramming_assignment1.R contains getter function
source("prgramming_assignment1.R")
data1<-getter("household_power_consumption.txt")
plot(data1$Datetime, as.numeric(data1$Global_active_power) ,type = "l",xlab = "", ylab = "Global Active Power (kilowatts)")