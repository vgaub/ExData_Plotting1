#Getting previously cleaned and created data 
source("power_consumption.R")

#Creating a plot; adapting xlab and ylab
plot(energy$dateTime, energy$Global_active_power, 
     type = "l",
     cex.axis = 0.7,
     cex.lab = 0.7,
     xlab="", 
     ylab = "Global Active Power (kilowatts)")


#Writing output into a .png file
dev.copy(png, "./plot2.png", width = 480, height = 480)
dev.off()