# Generate Fibonacci series
fibonacci <- function(n) {
  fib_seq <- numeric(n)
  fib_seq[1] <- 0
  fib_seq[2] <- 1
  for (i in 3:n) {
    fib_seq[i] <- fib_seq[i-1] + fib_seq[i-2]
  }
  return(fib_seq)
}
num_terms <- as.integer(readline("Enter number of terms: "))
cat("Fibonacci Series:", fibonacci(num_terms), "\n")
