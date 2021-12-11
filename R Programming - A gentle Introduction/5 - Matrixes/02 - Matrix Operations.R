# Example of operations 

example_matrix = matrix(data=1:4, nrow=2, ncol=2)

example_matrix_2 = matrix(data=4:7, nrow=2, ncol=2)

example_matrix + example_matrix_2

example_matrix - example_matrix_2

# Running with elements that don't fit the 
# matrix yields a warning

three_col_matrix = matrix(data=4:8, nrow=2, ncol=4)

# Simple multiplication yields an error
example_matrix * three_col_matrix

# Does not yield an error, dot product example:
example_matrix %*% three_col_matrix
