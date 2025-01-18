decimal_to_binary <- function(decimal) {
  return(as.character(intToBits(decimal)[intToBits(decimal) > 0]))
}

binary_to_decimal <- function(binary) {
  return(sum(as.numeric(rev(strsplit(binary, NULL)[[1]])) * 2^(0:(nchar(binary)-1))))
}

decimal_to_octal <- function(decimal) {
  return(as.character(as.octal(decimal)))
}

octal_to_decimal <- function(octal) {
  return(as.integer(strtoi(octal, base = 8)))
}

hexadecimal_to_binary <- function(hexadecimal) {
  return(as.character(intToBits(strtoi(hexadecimal, base = 16))))
}

binary_to_hexadecimal <- function(binary) {
  return(as.character(as.hexmode(strtoi(binary, base = 2))))
}

main <- function() {
  repeat {
    cat("\nMenu:\n")
    cat("1. Decimal to Binary\n")
    cat("2. Binary to Decimal\n")
    cat("3. Decimal to Octal\n")
    cat("4. Octal to Decimal\n")
    cat("5. Hexadecimal to Binary\n")
    cat("6. Binary to Hexadecimal\n")
    cat("7. Exit\n")
    
    choice <- as.integer(readline(prompt = "Enter your choice: "))
    
    if (choice == 1) {
      decimal <- as.integer(readline(prompt = "Enter a decimal number: "))
      cat("Binary:", paste0(decimal_to_binary(decimal), collapse = ""), "\n")
    } else if (choice == 2) {
      binary <- readline(prompt = "Enter a binary number: ")
      cat("Decimal:", binary_to_decimal(binary), "\n")
    } else if (choice == 3) {
      decimal <- as.integer(readline(prompt = "Enter a decimal number: "))
      cat("Octal:", decimal_to_octal(decimal), "\n")
    } else if (choice == 4) {
      octal <- readline(prompt = "Enter an octal number: ")
      cat("Decimal:", octal_to_decimal(octal), "\n")
    } else if (choice == 5) {
      hexadecimal <- readline(prompt = "Enter a hexadecimal number: ")
      cat("Binary:", paste0(hexadecimal_to_binary(hexadecimal), collapse = ""), "\n")
    } else if (choice == 6) {
      binary <- readline(prompt = "Enter a binary number: ")
      cat("Hexadecimal:", binary_to_hexadecimal(binary), "\n")
    } else if (choice == 7) {
      cat("Exiting program. Goodbye!\n")
      break
    } else {
      cat("Invalid choice. Please enter a valid option (1-7).\n")
    }
  }
}

main()
