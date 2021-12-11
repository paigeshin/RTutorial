example_matrix_1 <- matrix(1:4, nrow=2, ncol=2)
example_matrix_2 <- matrix(200:203, nrow=2, ncol=2) 
example_matrix_1 * example_matrix_2
example_matrix_1 + example_matrix_2
example_matrix_1 - example_matrix_2

matrix_1 <- matrix(1:6, nrow=2, ncol=3, byrow=TRUE)
matrix_2 <- matrix(7:12, nrow=3, ncol=2, byrow=TRUE)
matrix_1*matrix_2 # Not working  
matrix_1%*%matrix_2 # Matrix Multiplication 

dim(matrix_1)
dim(matrix_2)