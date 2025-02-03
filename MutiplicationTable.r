# Print multiplication table of a number
num <- as.integer(readline("Enter a number: "))
for (i in 1:10) {
  cat(num, "x", i, "=", num * i, "\n")
}
