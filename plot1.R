hpc <- read.csv("household_power_consumption.txt", sep=";",stringsAsFactors = FALSE)
hpc <- subset(hpc, hpc$Date == "1/2/2007" | hpc$Date == "2/2/2007")

hist(as.numeric(hpc$Global_active_power), col="red", xlab="Global Active Power (Kilowatts)", ylab="Frequency", main = "Global Active Power")