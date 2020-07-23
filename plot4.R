
#Loading source
household_power_consumption <- read_delim("household_power_consumption.txt", ";")
#subset data from February 1st
fev1 <-subset(household_power_consumption, Date =="1/2/2007")
#subset data from February 2nd
fev2 <-subset(household_power_consumption, Date =="2/2/2007")
#join data
gap <-rbind(fev1,fev2)
z <- strptime((paste(gap$Date,gap$Time)),format='%d/%m/%Y %H:%M:%S')
#Set my local
Sys.setlocale(locale = "C")
#selecting file name
png(file="plot4.png",width = 480, height = 480)
#GRaph creation
par(mfrow=c(2,2))
plot(z,gap$Global_active_power,type="l", ylab="Global Active Power (kilowatts)", xlab="")
plot(z,gap$Voltage,type="l", ylab="Voltage", xlab="datetime")
plot(z,gap$Sub_metering_1,type="l", ylab="Energy sub metering", xlab="")
lines(z,gap$Sub_metering_2, col="red")
lines(z,gap$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1), col=c("black","red","blue"),seg.len=1)
plot(z,gap$Global_reactive_power,type="l", ylab="Global_Reactive_Power (kilowatts)",
     xlab=" datetime")

#closing
dev.off()








