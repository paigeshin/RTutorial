example_matrix = matrix(data=1:4, nrow = 10, ncol = 4, byrow = FALSE) # default byrow = FALSE
?matrix()

# Output
#       [,1] [,2] [,3] [,4]
# [1,]    1    2    3    4
# [2,]    1    2    3    4
# [3,]    1    2    3    4
# [4,]    1    2    3    4
# [5,]    1    2    3    4
# [6,]    1    2    3    4
# [7,]    1    2    3    4
# [8,]    1    2    3    4
# [9,]    1    2    3    4
# [10,]   1    2    3    4

example_matrix = matrix(data=1:4, nrow = 10, ncol = 4)
example_matrix

# Output
#     [,1] [,2] [,3] [,4]
#[1,]    1    3    1    3
#[2,]    2    4    2    4
#[3,]    3    1    3    1
#[4,]    4    2    4    2
#[5,]    1    3    1    3
#[6,]    2    4    2    4
#[7,]    3    1    3    1
#[8,]    4    2    4    2
#[9,]    1    3    1    3
#[10,]    2    4    2    4

example_matrix_2 = array(data=1:4, dim=c(10, 4))

# Output
#     [,1] [,2] [,3] [,4]
#[1,]    1    3    1    3
#[2,]    2    4    2    4
#[3,]    3    1    3    1
#[4,]    4    2    4    2
#[5,]    1    3    1    3
#[6,]    2    4    2    4
#[7,]    3    1    3    1
#[8,]    4    2    4    2
#[9,]    1    3    1    3
#[10,]    2    4    2    4

example_matrix == example_matrix_2 

# Output
#     [,1] [,2] [,3] [,4]
#[1,] TRUE TRUE TRUE TRUE
#[2,] TRUE TRUE TRUE TRUE
#[3,] TRUE TRUE TRUE TRUE
#[4,] TRUE TRUE TRUE TRUE
#[5,] TRUE TRUE TRUE TRUE
#[6,] TRUE TRUE TRUE TRUE
#[7,] TRUE TRUE TRUE TRUE
#[8,] TRUE TRUE TRUE TRUE
#[9,] TRUE TRUE TRUE TRUE
#[10,] TRUE TRUE TRUE TRUE

class(example_matrix) # Array 

dim(example_matrix)
nrow(example_matrix)
ncol(example_matrix)

