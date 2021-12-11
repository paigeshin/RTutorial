# Operations with Arrays


# Creating our example array
my_array = array(1:4, dim=c(2,2))

# Similar to vectors, we can also apply 
# functions to our arrays 
# the functions will also be applied element
# wise
sqrt(my_array)

# We can also apply functions to specific 
# array elements using indexes
sqrt(my_array[1,])
