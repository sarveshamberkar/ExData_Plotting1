#prgramming_assignment1.R contains getter function
source("prgramming_assignment1.R")
data1<-getter("household_power_consumption.txt")
windows(width=15, height=15)#setting window size for most optimal graph
par(mfrow=c(2,2))##creating two by two matrix
##1st graph 
plot(data1$Datetime,as.numeric(data1$Global_active_power),ylab = "Global Activity Power(kilowatts)",type = "l")
##2nd graph
plot(data1$Datetime,as.numeric(data1$Voltage),xlab = "Datetime",ylab = "Voltage",type = "l")
##3rd graph
plot(data1$Datetime, as.numeric(data1$Sub_metering_1),type = "l",xlab = "", ylab = "Energy sub meeting")
lines(data1$Datetime,as.numeric(data1$Sub_metering_2),col="red")
lines(data1$Datetime,as.numeric(data1$Sub_metering_3),col="blue")
legend("topright",legend = c("sub_meeting_1","sub_meeting_2","sub_meeting_3"),col=c("black","red","blue"),lty=rep(1,each=3),box.lty = 0,cex = 0.77)
##4th graph
plot(data1$Datetime,as.numeric(data1$Voltage),xlab = "Datetime",type = "l")

