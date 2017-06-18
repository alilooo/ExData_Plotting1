hpc <- read.csv("household_power_consumption.txt", sep=";",stringsAsFactors = FALSE)
hpc <- subset(hpc, hpc$Date == "1/2/2007" | hpc$Date == "2/2/2007")


par(mfrow = c(2,2))

plot(hpc$Global_active_power,type = "l",xlab="", ylab= "Global Active Power", xaxt="n")
axis(1,at=c(1,1440,2880), labels = c("Thu","Fri","Sat"))

plot(hpc$Voltage ,type = "l", ylab= "Voltage", xlab="datetime", xaxt="n")
axis(1,at=c(1,1440,2880), labels = c("Thu","Fri","Sat"))

plot(hpc$Sub_metering_1,type = "l", ylab= "Energy sub metering", xaxt="n")
lines(hpc$Sub_metering_2,col = "red")
lines(hpc$Sub_metering_3,col = "blue")
axis(1,at=c(1,1440,2880), labels = c("Thu","Fri","Sat"))
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red","blue"), pch = "__", cex=0.3, bty="n")

plot(hpc$Global_reactive_power ,type = "l",ylab="Global_reactive_power", xlab="datetime", xaxt="n")
axis(1,at=c(1,1440,2880), labels = c("Thu","Fri","Sat"))