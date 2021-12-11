my_array = array(1:8, dim=c(4,4))
my_array 
# Output
#       [,1] [,2] [,3] [,4]
# [1,]    1    5    1    5
# [2,]    2    6    2    6
# [3,]    3    7    3    7
# [4,]    4    8    4    8

my_array[,4] # Fourth Colume
# Output
# 5 6 7 8 

my_array[2:3, 3] 
# Output
# 2 3 

my_array[1,] # First Row
# Output 
# 1 5 1 5 

# Assign First row with `c(100, 100, 100, 100)`
my_array[1,] <- c(100, 100, 100, 100)
my_array
# Output
#       [,1] [,2] [,3] [,4]
# [1,]   100  100  100  100 
# [2,]    2    6    2    6
# [3,]    3    7    3    7
# [4,]    4    8    4    8


# Assign First colum with `c(100, 100, 100, 100)`
my_array[,1] <- c(100, 100, 100, 100)
my_array
# Output
#       [,1] [,2] [,3] [,4]
# [1,]   100    5    1    5
# [2,]   100    6    2    6
# [3,]   100    7    3    7
# [4,]   100    8    4    8

my_array[1:2, ] <- array(c(1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000), dim = c(2,4))
my_array
# Output 
#     [,1] [,2] [,3] [,4]
#[1,] 1000 1000 1000 1000
#[2,] 1000 1000 1000 1000
#[3,]  100    7    3    7
#[4,]  100    8    4    8
