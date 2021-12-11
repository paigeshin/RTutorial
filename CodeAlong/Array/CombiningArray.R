my_array_1 = array(1:4, dim=c(2,2))
my_array_2 = array(10:14, dim=c(2,2))

# Row Bind 
rbind(my_array_1, my_array_2) # Becomes 4 / 2 array 
dim(rbind(my_array_1, my_array_2)) # 4 2 

# Column Bind
cbind(my_array_1, my_array_2) # Becomes 2 / 4 array
dim(cbind(my_array_1, my_array_2)) # 2 4

my_array_1 = array(1:4, dim=c(2,2))
my_array_2 = array(10:14, dim=c(2,3))

dim(rbind(my_array_1, my_array_2)) # rbind doesn't work, number of columns of matrices must match.. it's throwing an error
dim(cbind(my_array_1, my_array_2)) # cbind works fine, returning 2 5 

my_array_1 = array(1:4, dim=c(2,2))
my_array_2 = array(10:14, dim=c(4,3))

dim(rbind(my_array_1, my_array_2)) # rbind doesn't work, number of columns of matrices must match.. it's throwing an error
dim(cbind(my_array_1, my_array_2)) # cbind doesn't work, number of rows of matrices must match