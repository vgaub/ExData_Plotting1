#Getting previously cleaned and created data
source("power_consumption.R")

#Setting the plotting frame
par(mfrow = c(2, 2))

#Creating plots and adapting, e.g. font sizes (cex.axis = 0.6, cex.lab = 0.7)
#Creating plot 1 (differs from plot2.png in value of ylab)
plot(energy$dateTime, energy$Global_active_power, 
     type = "l",
     cex.axis = 0.6,
     cex.lab = 0.7,
     xlab="", 
     ylab = "Global Active Power")


#Creating plot 2
plot(energy$dateTime, energy$Voltage, 
     type = "l",
     cex.axis = 0.6,
     cex.lab = 0.7,
     xlab = "datetime",
     ylab = "Voltage")


#Creating plot 3 and adapting the legend (e.g. text size (cex) and box type (bty))
plot(energy$dateTime, energy$Sub_metering_1,
     type = "l",
     cex.axis = 0.6,
     cex.lab = 0.7,
     xlab="", 
     ylab = "Energy sub metering")

lines(energy$dateTime, energy$Sub_metering_2, col="red")
lines(energy$dateTime, energy$Sub_metering_3, col="blue")

legend("topright", 
       legend = names(energy)[7:9], 
       cex = 0.7, 
       lty = 1,
       bty = "n",
       col = c("black", "red", "blue"))


#Creating plot 4
plot(energy$dateTime, energy$Global_reactive_power, 
     type = "l",
     cex.axis = 0.6,
     cex.lab = 0.7,
     xlab = "datetime",
     ylab = "Global_reactive_power")


#Writing output into a .png file
dev.copy(png, "./plot4.png", width = 480, height = 480)
dev.off()