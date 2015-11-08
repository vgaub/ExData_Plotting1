#Getting previously cleaned and created data
source("power_consumption.R")

#Creating a histogram; adapting main, xlab and color
hist(energy$Global_active_power,
     cex.main = 0.9,
     cex.axis = 0.7,
     cex.lab = 0.7,
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     col = "red")


#Writing output into a .png file
dev.copy(png, "./plot1.png", width = 480, height = 480)
dev.off()