# We'll check the mtcars dataset again
data(mtcars)

# Filtering the table - Selecting only the cars with 
# cyl equals to 4 
mtcars[mtcars$cyl==4,]

# Negating that example
mtcars[mtcars$cyl!=4,]

# Multiple selections - One example
method_1 = mtcars[mtcars$cyl %in% c(4,6),]

# Another way to do it 
method_2 = mtcars[(mtcars$cyl==4) | (mtcars$cyl==6),]

# Are these objects the same? 
method_1==method_2

# Example of the AND operator
mtcars[(mtcars$hp>100) & (mtcars$hp<140),]