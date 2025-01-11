 # Recursive function to find the factorial of a number
 factorial <- function(n) {
 if (n == 0) {
 return(1)
 } 
 else {
 return(n * factorial(n- 1))
 }
 }

 # Input the number for which you want to find the factorial
 number <- as.integer(readline(prompt = "Enter a number: "))

 # Check if the input is a non-negative integer
 if (number < 0) {
 cat("Factorial is not defined for negative numbers\n")
 } else {
 result <- factorial(number)
 cat(paste("The factorial of", number, "is", result, "\n"))
 }