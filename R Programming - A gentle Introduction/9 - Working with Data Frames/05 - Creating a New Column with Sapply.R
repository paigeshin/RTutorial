# Loading mtcars
data(mtcars)

# Let's use sapply to create a column with the
# Brand of the car

# Creating the car model as column
mtcars$model <- rownames(mtcars)

# Using strsplit to split the brand from model
# A new string function: strsplit!
car_list = strsplit(mtcars$model, ' ')

# Add the brand to our mtcars
# notice how we are using sapply with an indexer
# function ('[') and not an aggregating function
# such as mean, max or sum
mtcars$brand <- sapply(car_list, FUN='[', n=1)

