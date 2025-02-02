# Check if a number is even or odd
num <- as.numeric(readline("Enter a number: "))

if (num %% 2 == 0) {
  cat(num, "is Even\n")
} else {
  cat(num, "is Odd\n")
}
