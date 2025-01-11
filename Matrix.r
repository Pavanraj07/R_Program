 #Develop a program to create two 3 X 3 matrices A and B and perform the following
 #operations a) Transpose of the matrix b) addition c) subtraction d) multiplication

 # Create two 3x3 matrices A and B
 A<- matrix(1:9, nrow = 3)
 B<- matrix(10:18, nrow = 3)

 # Display matrices A and B
 cat("Matrix A:\n")
 print(A)

 cat("\nMatrix B:\n")
 print(B)

 # a) Transpose of the matrices
 cat("\nTranspose of Matrix A:\n")
 A_transpose <- t(A)
 print(A_transpose)

 cat("\nTranspose of Matrix B:\n")
 B_transpose <- t(B)
 print(B_transpose)

 # b) Addition of matrices
 cat("\nMatrix A + Matrix B:\n")
 addition_result <- A + B
 print(addition_result)

 # c) Subtraction of matrices
 cat("\nMatrix A- Matrix B:\n")
 subtraction_result <- A- B
 print(subtraction_result)

 # d) Multiplication of matrices
 cat("\nMatrix A * Matrix B:\n")
 multiplication_result <- A %*% B
 print(multiplication_result)