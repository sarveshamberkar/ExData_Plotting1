#prgramming_assignment1.R contains getter function
source("prgramming_assignment1.R")

data1<-getter("household_power_consumption.txt")
windows(width=10, height=8)
plot(data1$Datetime, as.numeric(data1$Sub_metering_1),type = "l",xlab = "", ylab = "Energy sub meeting")
lines(data1$Datetime,as.numeric(data1$Sub_metering_2),col="red")
lines(data1$Datetime,as.numeric(data1$Sub_metering_3),col="blue")
legend("topright",legend = c("sub_meeting_1","sub_meeting_2","sub_meeting_3"),col=c("black","red","blue"),lty=rep(1,each=3),cex = 0.95)

