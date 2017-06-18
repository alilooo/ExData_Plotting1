hpc <- read.csv("household_power_consumption.txt", sep=";",stringsAsFactors = FALSE)
hpc <- subset(hpc, hpc$Date == "1/2/2007" | hpc$Date == "2/2/2007")

plot(hpc$Global_active_power,type = "l",xlab="", ylab= "Global Active Power (Kilowatts)", xaxt="n")
axis(1,at=c(1,1440,2880), labels = c("Thu","Fri","Sat"))