# We can combine arrays row-wise or column-wise
# these properties also apply to data frames 
# another object we will study in the future

my_array_1 = array(1:4, dim=c(2,2))

my_array_2 = array(10:14, dim=c(2,2))

# to combine row wise 
rbind(my_array_1, my_array_2)

# to combine column wise 
cbind(my_array_1, my_array_2)

# Watch out for different number of dimensions 
# when combining arrays! 
my_different_array = array(10:14, dim=c(10,4))

# The following will throw an error due to a mismatch
# in columns or rows:
rbind(my_different_array, my_array_1)

cbind(my_different_array, my_array_1)

