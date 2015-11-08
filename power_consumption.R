#Loading packages data.table (for fread()) and dplyr (for mutate())
library(data.table)
library(dplyr)


#1. Reading in the household power consumption data into the r object "energy".
#2. Defining that "?" values are NA values.
#3. Defining column classes, especially that have numeric values in it.
#   Dates and times will be handled later.
#4. Subsetting the table by the dates 2007-02-01 and 2007-02-02
#   The data was gathered every minute, so the subset has 
#   2880 rows = 2 (days) * 24 (hours) * 60 (minutes)

energy <- fread("./household_power_consumption.txt", 
                  na.strings = "?", 
                  colClasses = c(rep("character", 2), rep("numeric", 7)))[
        grepl("^1/2/2007|^2/2/2007", Date),
        ]


#5. Creating a new column with mutate() which contains date and time when the 
#   data was gathered. The data type is POSIXct.
energy <- mutate(energy, dateTime = paste(Date, Time, sep = " "))
energy$dateTime <- as.POSIXct(strptime(energy$dateTime, "%d/%m/%Y %H:%M:%S"))