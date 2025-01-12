 #Let us use the built-in dataset air quality which has Daily air quality measurements in New
 #York, May to September 1973. Develop R program to generate histogram by using
 #appropriate arguments for the following statements.
 #a) Assigning names, using the air quality data set.
 #b) Change colors of the Histogram
 #c) Remove Axis and Add labels to Histogram
 #d) Change Axis limits of a Histogram
 #e) Add Density curve to the histogram

# Load the airquality dataset
 data(airquality)

 # a) Assign names to the air quality dataset
 colnames(airquality) <- c("Ozone", "Solar_R", "Wind", "Temp", "Month", "Day")

 # b) Change colors of the histogram
 hist(airquality$Ozone, col = "blue", xlab = "Ozone Level", main = "Ozone Histogram")

 # c) Remove Axis and Add labels to the histogram
 hist(airquality$Solar_R, col = "green", xlab = "Solar Radiation", ylab = "Frequency", main = "Solar
 Radiation Histogram", axes = FALSE)
 axis(1, at = seq(0, 350, by = 50))
 axis(2)

 # d) Change Axis limits of a histogram
 hist(airquality$Wind, col = "red", xlab = "Wind Speed", main = "Wind Speed Histogram", xlim =
 c(0, 20))

 # e) Add Density curve to the histogram
 hist(airquality$Temp, col = "purple", xlab = "Temperature (Fahrenheit)", main = "Temperature
 Histogram", prob = TRUE)
 lines(density(airquality$Temp), col = "blue")
 
 # Restore default settings for subsequent plots
 par(mar = c(5, 4, 4, 2) + 0.1)