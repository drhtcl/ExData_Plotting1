
#Loading source
household_power_consumption <- read.csv("/mnt/DADOS/Data Science/Coursera/household_power_consumption.txt", sep=";")
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
png(file="plot2.png",width = 480, height = 480)
#GRaph creation
plot(z,gap$Global_active_power,type="l", ylab="Global Active Power (kilowatts)",
         xlab="")
#closing
dev.off()








