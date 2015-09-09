stop("Set the working dir to the ExData_Plotting1 dir with the command below")
##setwd("/ExData_Plotting1/data")

powerdata <- read.csv("./data/household_power_consumption_subset.txt")

# we know that Date is in format dd/mm/yyyy and time in hh:mm:ss
powerdata$datetime <- as.POSIXct(paste0(powerdata$Date," ",powerdata$Time), format="%d/%m/%Y %H:%M:%S")

png("plot2.png", width = 480, height = 480)

with(powerdata, plot(datetime, Global_active_power, type="l", ylab = "Global Active Power (kilowatts)"))

dev.off()