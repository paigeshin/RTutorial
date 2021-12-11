# Apply families are one of the most 
# common functions we use in R 

# Let's load the iris dataset 
data(iris)

?iris  

# Apply applies something through an object depending on
# a margin (2 equals to columns)
apply(iris, 2, mean)

# Checking the documentation of the function
?apply

# Unfortunately, apply is not convenient when we
# apply means to dataframes that have characters
# apply really depends on two things - the behavior
# of the function we are applying and the
# object we are applying something to

# As an example, we can apply max but we get the
# returning vector of characters as the max function
# can also be applied to strings
apply(iris, 2, max)

# Let's test apply on a numerical matrix
our_matrix = matrix(data = c(1,2,3,4), nrow=2, ncol=2)

apply(our_matrix, 2 ,mean)

# We have alternative functions of the apply family, 
# such as lapply that returns a list - here we can
# conveniently use a mean with lapply

means = lapply(iris, mean)

# Sum yields an error when applied on a data frame
# with characters - hence we may need to subset
# the table in this case
sum = lapply(iris, sum)

# Sapply is a wrapper of lapply and much prettier!
sapply(iris[,1:4], min)

# These functions can also consume costume functions

# There are also other functions such as vapply or mapply 
# but we will not look at them

# Bottom line, apply, sapply and lapply treat functions
# differently depending on the type of function we are applying
# but they are very convenient to iterate through objects
# without writing a huge amount of code

