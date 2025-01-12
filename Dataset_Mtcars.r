 #Using the built in dataset mtcars which is a popular dataset consisting of the design and
 #fuel consumption patterns of 32 different automobiles. The data was extracted from the 1974
 #Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile
 #design and performance for 32 automobiles (1973-74 models). Format A data frame with 32
 #observations on 11 variables : [1] mpg Miles/(US) gallon, [2] cyl Number of cylinders [3] disp
 #Displacement (cu.in.), [4] hp Gross horsepower [5] drat Rear axle ratio,[6] wt Weight
 #(lb/1000) [7] qsec 1/4 mile time, [8] vs V/S, [9] am Transmission (0 = automatic, 1 = manual),
 #[10] gear Number of forward gears, [11] carb Number of carburetors
 #Develop R program, to solve the following:
 #a) What is the total number of observations and variables in the dataset?
 #b) Find the car with the largest hp and the least hp using suitable functions
 #c) Plot histogram / density for each variable and determine whether continuous variables are
 #normally distributed or not. If not, what is their skewness?
 #d) What is the average difference of gross horse power(hp) between automobiles with 3 and 4
 #number of cylinders(cyl)? Also determine the difference in their standard deviations.
 #e) Which pair of variables has the highest Pearson correlation?

  # Load the mtcars dataset
data(mtcars)

 # a) Total number of observations and variables
n_observations <- nrow(mtcars)
n_variables <- ncol(mtcars)

cat("Total number of observations:", n_observations, "\n")
cat("Total number of variables:", n_variables, "\n")

 # b) Car with the largest and least hp
car_with_largest_hp <- mtcars[which.max(mtcars$hp), ]
car_with_least_hp <- mtcars[which.min(mtcars$hp), ]
cat("Car with the largest hp:\n")
print(car_with_largest_hp)
cat("Car with the least hp:\n")
print(car_with_least_hp)

 # Set custom graphical parameters for smaller margins
par(mfrow = c(4, 3))
par(mar = c(3, 3, 2, 1)) # Adjust the margins as needed (bottom margin is set to 1)

 # c) Plot histogram/density for each variable and check for normality
for (col in names(mtcars)) {
hist(mtcars[, col], main = col, xlab = col, col = "lightblue")
lines(density(mtcars[, col]), col = "red")
}

 # Restore default graphical parameters
par(mfrow = c(1, 1))
par(mar = c(5, 4, 4, 2) + 0.1)

 #d) What is the average difference of gross horse power(hp) between automobiles with 3 and 4
 #number of cylinders(cyl)? Also determine the difference in their standard deviations.
mtcars_cyl_4_hp_avg=mean(mtcars[mtcars$cyl=="4",]$hp)
mtcars_cyl_6_hp_avg=mean(mtcars[mtcars$cyl=="6",]$hp)
mtcars_hp_diff=mtcars_cyl_6_hp_avg-mtcars_cyl_4_hp_avg
mtcars_hp_diff
sd(mtcars[mtcars$cyl=="4",]$hp)
sd(mtcars[mtcars$cyl=="6",]$hp)

 #e) Which pair of variables has the highest Pearson correlation?
attach(mtcars)

 # correlation between mpg and wt
cor(mpg, wt, method = "pearson")
 #cor(cyl, hp, method = "pearson")