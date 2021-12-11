# Exercise 1
matrix_example <- matrix(c(100,23,42,23,342,203),
                         nrow=3,
                         ncol=2)

# Exercise 2
one_matrix = matrix_example/matrix_example

# Exercise 3
one_matrix[,1] = log(one_matrix[,1])

# Exercise 4 
one_matrix[2,] = one_matrix[2,]*0.33

# Exercise 5
one_matrix_t = t(one_matrix)

# Exercise 6
matrix_mul = matrix_example%*%one_matrix_t



