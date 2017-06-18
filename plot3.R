hpc <- read.csv("household_power_consumption.txt", sep=";",stringsAsFactors = FALSE)
hpc <- subset(hpc, hpc$Date == "1/2/2007" | hpc$Date == "2/2/2007")


plot(hpc$Sub_metering_1,type = "l",xlab="", ylab= "Energy sub metering", xaxt="n")
lines(hpc$Sub_metering_2,col = "red")
lines(hpc$Sub_metering_3,col = "blue")
axis(1,at=c(1,1440,2880), labels = c("Thu","Fri","Sat"))
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red","blue"), pch = "__")
