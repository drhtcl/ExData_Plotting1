
#Loading source
household_power_consumption <- read.csv("/mnt/DADOS/Data Science/Coursera/household_power_consumption.txt", sep=";")
#subset data from February 1st
fev1 <-subset(household_power_consumption, Date =="1/2/2007",)
#subset data from February 2nd
fev2 <-subset(household_power_consumption, Date =="2/2/2007")
#join data
gap <-rbind(fev1,fev2)
gap$Global_active_power <- as.numeric(gap$Global_active_power)
#selecting file name
png(file="plot1.png",width = 480, height = 480)
#Graph cration
hist(gap$Global_active_power,main="Global Active Power",
     col="red",xlab="Global Active Power (kilowatts)", ylab="Frequency")
#closing
dev.off()






