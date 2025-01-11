 # Function to find all prime numbers up to a specified limit using the Sieve of Eratosthenes
 sieve_of_eratosthenes <- function(limit) {

 # Create a logical vector "is_prime" initialized to TRUE for all numbers from 2 to the limit
 is_prime <- rep(TRUE, limit)
 []
 # Set up variables
 p <- 2
 while (p^2 <= limit) {
 # If p is marked as prime, then mark all multiples of p as non-prime
 if (is_prime[p]) {
 k <- p
 while(k <= limit){
 if(k+p <= limit){
 is_prime[k+p] <- FALSE
 }
 k <- k +p
 }
 }
 p <- p +1
 }

 # Return a vector of prime numbers up to the limit (excluding 0 and 1)
 primes <- which(is_prime)
 return(primes)
}

 # Input the limit (up to which you want to find prime numbers)
 limit <- as.integer(readline(prompt = "Enter a limit to find prime numbers: "))
 
 # Check if the input limit is greater than or equal to 2
 if (limit < 2) {
 cat("Prime numbers start from 2. Enter a valid limit.\n")
 } else {
 prime_numbers <- sieve_of_eratosthenes(limit)
 cat("Prime numbers up to", limit, "are: ", paste(prime_numbers, collapse = ", "), "\n")
 }