#prgramming_assignment1.R contains getter function
source("prgramming_assignment1.R")
data1<-getter("household_power_consumption.txt")
##histogram
hist(as.numeric(data1$Global_active_power),xlab = "Global Activity Power(kilowatts)",ylab = "Frequency",col = "red",main="Global Activity Power",lwd="2")
