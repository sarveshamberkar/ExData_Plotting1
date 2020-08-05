##return the correct dataset with mentioned specs
getter<-function(fname){
  library(dplyr)
  library(data.table)
  data<-fread("household_power_consumption.txt",sep = ";",header = TRUE)
  data$Date<-as.Date(data$Date,format = "%d/%m/%Y")
  
  d1<-as.Date("01/02/2007",format="%d/%m/%Y")
  d2<-as.Date("02/02/2007",format="%d/%m/%Y")
  
  data1<-filter(data,Date==d1 | Date==d2)
  
  data1$Datetime<-as.POSIXct(paste(data1$Date,data1$Time,sep = " "),format = "%Y-%m-%d %H:%M:%S")
  
  return(data1)
  
}
