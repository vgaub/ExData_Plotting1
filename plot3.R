#Getting previously cleaned and created data 
source("power_consumption.R")

#Creating a plot with data from energy sub-metering no. 1 (kitchen)
#(color is black by default)
plot(energy$dateTime, energy$Sub_metering_1,
     type = "l", 
     cex.axis = 0.7,
     cex.lab = 0.7,
     xlab="", 
     ylab = "Energy sub metering")


#Adding data from energy sub-metering no. 2 (laundry room) and no. 3.
#Adding a legend
lines(energy$dateTime, energy$Sub_metering_2, col="red")
lines(energy$dateTime, energy$Sub_metering_3, col="blue")

legend("topright", 
       legend = names(energy)[7:9], 
       cex = 0.7,
       lty = 1, 
       col = c("black", "red", "blue"))


#Writing output into a .png file
dev.copy(png, "./plot3.png", width = 480, height = 480)
dev.off()