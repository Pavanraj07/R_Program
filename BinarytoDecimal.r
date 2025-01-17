# Function to convert binary to decimal and return as an integer 
binary_to_decimal <- function(binary) { 
  decimal <- 0 
  for (i in 1:nchar(binary)) { 
    decimal <- decimal * 2 + as.integer(substr(binary, i, i)) 
  } 
  return(decimal) 
}