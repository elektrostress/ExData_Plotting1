stop("Set the working dir to the ExData_Plotting1 dir with the command below")
##setwd("/ExData_Plotting1/data")

powerdata <- read.csv("./data/household_power_consumption_subset.txt")

png("plot1.png", width = 480, height = 480)

hist(
  powerdata$Global_active_power, 
  col="red", 
  main="Global Active Power",
  xlab = "Global Active Power (kilowatts)"
)

dev.off()