#6. Demonstrate element extraction from vectors, matrices and arrays

 vector_example<-c(1,3,5,7,9)
 vector_example[3]

 matrix_example<-matrix(1:6,nrow=2,ncol=3)
 matrix_example[2,3]
 
 array_example<-array(1:12,dim=c(2,3,2))
 array_example
 array_example[2,2,2]