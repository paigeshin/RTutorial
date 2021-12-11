# Creating an Example list
example_list <- list(c('a','b','c'), array(1:10, dim=c(2,5)))

# We can add elements by positioning them
# in a new index that doesn't exist

example_list[3] <- 'abc'

# To remove elements from list we can assign them to
# the element NULL
example_list[3] <- NULL