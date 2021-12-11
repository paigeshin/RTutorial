my_vector = 1:4 
my_vector # Output: 1, 2, 3, 4 

# Takes a vector argument
# Define dimensions with dim (2 x 2)
my_array = array(data=my_vector, dim=c(2,2)) 

my_array
# Output
#      [,1] [,2]
# [1,]    1    3
# [2,]    2    4

my_array[1, 2] #Output: 3  [1, 2] Row 1 & Column 2

class(my_array) #Output: "matrix", "array"

