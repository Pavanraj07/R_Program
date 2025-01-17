 # Function to convert decimal to binary and return as a string 
decimal_to_binary <- function(decimal) { 
  binary <- "" 
  while (decimal > 0) { 
    binary <- paste0(decimal %% 2, binary) 
    decimal <- decimal %/% 2 
  } 
  return(binary)