#Demonstrate the progression of salary with years of experience using a suitable data set
#(You can create your own dataset). Plot the graph visualizing the best fit line on the plot of the
#given data points. Plot a curve of Actual Values vs. Predicted values to show their correlation
#and performance of the model. Interpret the meaning of the slope and y-intercept of the line
#with respect to the given data. Implement using lm function. Save the graphs and coefficients
#in files. Attach the predicted values of salaries as a new column to the original data set and
#save the data as a new CSV file

 # Create a sample dataset
 set.seed(123) # Set a random seed for reproducibility
 years_of_experience <- 0:10 # Years of experience
 salaries <- 30000 + 2000 * years_of_experience + rnorm(11, mean = 0, sd = 5000) 

 # Create a data frame
 data <- data.frame(Experience = years_of_experience, Salary = salaries)

 # Fit a linear regression model
 model <- lm(Salary ~ Experience, data = data)

 # Plot the data points and best fit line
 plot(data$Experience, data$Salary, main = "Salary vs. Years of Experience", xlab = "Years of
 Experience", ylab = "Salary", pch = 19, col = "blue")
 abline(model, col = "red")

 # Save the plot
 png("salary_vs_experience_plot.png")
 plot(data$Experience, data$Salary, main = "Salary vs. Years of Experience", xlab = "Years of
 Experience", ylab = "Salary", pch = 19, col = "blue")
 abline(model, col = "red")
 dev.off()

 # Predict values using the model
 predicted_values <- predict(model, data)

 # Plot the curve of actual values vs. predicted values
 plot(data$Salary, predicted_values, main = "Actual Values vs. Predicted Values", xlab = "Actual
 Salary", ylab = "Predicted Salary", col = "blue")
 abline(h = 0, v = 0, col = "red")

 # Save the correlation plot
 png("actual_vs_predicted_plot.png")
 plot(data$Salary, predicted_values, main = "Actual Values vs. Predicted Values", xlab = "Actual
 Salary", ylab = "Predicted Salary", col = "blue")
 abline(h = 0, v = 0, col = "red")
 dev.off()

 # Interpret the slope and y-intercept of the line
 coefficients <- coef(model)
 slope <- coefficients["Experience"]
 intercept <- coefficients["(Intercept)"]
 cat("The slope (coefficient for Experience) is", slope, "\n")
 cat("The y-intercept (Intercept) is", intercept, "\n")

 # Attach the predicted values as a new column to the original data frame
 data$Predicted_Salary <- predicted_values
 
 # Save the data with predicted values as a new CSV file
 write.csv(data, "salary_vs_experience_data_with_predictions.csv", row.names = FALSE)