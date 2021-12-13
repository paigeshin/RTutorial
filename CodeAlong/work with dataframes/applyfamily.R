# Load data from R (for Practice)
data(iris)

?apply

# X	
# an array, including a matrix.

# MARGIN	
# a vector giving the subscripts which the function will be applied over. E.g., for a matrix 1 indicates rows, 2 indicates columns, c(1, 2) indicates rows and columns. Where X has named dimnames, it can be a character vector selecting dimension names.

# FUN	
# the function to be applied: see ‘Details’. In the case of functions like +, %*%, etc., the function name must be backquoted or quoted

# MARGIN 1 => indicates Row
# MARGIN 2 => indicates Column

# Extract Max Value in each column
apply(X = iris, MARGIN = 2, FUN = max) 

# Extract Min Value in each column
apply(X = iris, MARGIN = 2, FUN = min) 

# Extract Mean value in each column [1:4]
apply(X = iris[, 1:4], MARGIN = 2, FUN = mean)

# Check Datatype
class(apply(X=iris, MARGIN=2, FUN=max)) # Output character

# Show how to use lapply, lapply returns list 
?lapply

# list apply, for numeric columms (every element)
lapply(X = iris, FUN = mean)

# Repeated 
sum(iris[,1])
sum(iris[,2])
sum(iris[,3])
sum(iris[,4])

# replaced with lapply, more concise
lapply(X = iris[,1:4], FUN = sum) 

# Check data type 
class(lapply(X = iris[,1:4], FUN = sum) ) # Output list

# Check data type, Vector 
class(sapply(X = iris[,1:4], FUN = max)) # Output numeric (Vector)


class(sapply(X = iris[,1:4], FUN = mean))

