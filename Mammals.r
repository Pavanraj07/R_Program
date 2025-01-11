#The built-in data set mammals contain data on body weight versus brain weight. Develop R
#commands to:
 #a) Find the Pearson and Spearman correlation coefficients. Are they similar?
 #b) Plot the data using the plot command.
 #c) Plot the logarithm (log) of each variable and see if that makes a difference

  # Load the "MASS" package:
 library(MASS)

 # Load the mammals dataset
 data(mammals)

 # Calculate Pearson correlation coefficient
 pearson_correlation <- cor(mammals$brain, mammals$body, method = "pearson")

 # Calculate Spearman correlation coefficient
 spearman_correlation <- cor(mammals$brain, mammals$body, method = "spearman")

 # Print the correlation coefficients
 cat("Pearson Correlation Coefficient:", pearson_correlation, "\n")
 cat("Spearman Correlation Coefficient:", spearman_correlation, "\n")

 # Plot the data
 plot(mammals$body, mammals$brain, xlab = "Body Weight", ylab = "Brain Weight", main = "Body
 Weight vs. Brain Weight")

 # Calculate the log of body weight and brain weight
 log_body <- log(mammals$body)
 log_brain <- log(mammals$brain)
 
 # Plot the log-transformed data
 plot(log_body, log_brain, xlab = "Log Body Weight", ylab = "Log Brain Weight", main = "Log
 Body Weight vs. Log Brain Weight"