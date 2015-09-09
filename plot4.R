stop("Set the working dir to the ExData_Plotting1 dir with the command below")
##setwd("/ExData_Plotting1/data")

powerdata <- read.csv("./data/household_power_consumption_subset.txt")

# we know that Date is in format dd/mm/yyyy and time in hh:mm:ss
powerdata$datetime <- as.POSIXct(paste0(powerdata$Date," ",powerdata$Time), format="%d/%m/%Y %H:%M:%S")

#### the actual plots
png("plot4.png", width = 480, height = 480)

# set 2x2 rows/cols
par(mfrow = c(2, 2))

# upper-left
with(powerdata, plot(datetime, Global_active_power, type="l", ylab = "Global active power", xlab=""))

# upper-right
with(powerdata, plot(datetime, Voltage, type="l", ylab = "Voltage"))

#lower left
plot(powerdata$datetime, powerdata$Sub_metering_1, type="l", ylab = "Energy sub metering", xlab="")
lines(powerdata$datetime, powerdata$Sub_metering_2, type="l", col="red")
lines(powerdata$datetime, powerdata$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1, col=c('black', 'red', 'blue'), bty = "n")

#lower right
with(powerdata, plot(datetime, Global_reactive_power, type="l"))

dev.off()