stop("Set the working dir to the ExData_Plotting1/data dir and include the original household_power_consumption.txt")
##setwd("/ExData_Plotting1/data")

# read first row only for the correct columns
powerdata_cols <- read.csv(
  "./household_power_consumption.txt", 
  sep=";", header=T, nrows=1)

# we know from exploration that february 1-2 resides on rows 66636 to 69516
# missing values are coded as ? so we can supply that directly to read.csv
powerdata <- read.csv(
  "./household_power_consumption.txt", 
  na.strings = c('?'), 
  sep=";", 
  skip=66636, 
  col.names = colnames(powerdata_cols), 
  nrows=2880)

write.csv(powerdata, "./household_power_consumption_subset.txt", row.names = FALSE)