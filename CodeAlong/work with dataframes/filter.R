# Load data from R provided dataset
data(mtcars)

data[,]

# Extract all rows in cyl column
mtcars[, 'cyl']

# Check Datatype 
class(mtcars[, 'cyl'])
class(mtcars$cyl)

# Check if objects are same 
class(mtcars[, 'cyl']) == class(mtcars$cyl) # yield TRUE 

# Loop through mtcars and check if mtcars[,cyl] is 4
mtcars$cyl == 4

# extract if mtcars[,cyl] is 4
mtcars[mtcars$cyl == 4,]

# extract if cyl is 4 and cyl is 6 
mtcars[(mtcars$cyl == 4) | (mtcars$cyl == 6),]

nrow(mtcars[(mtcars$cyl == 4) | (mtcars$gear == 3),])

nrow(mtcars[(mtcars$cyl == 4) | (mtcars$gear == 3),])

mtcars[mtcars$cyl != 4,]

# pass vector to select 4 and 5 
cyl_list = c(4,5) 
cyl_list

mtcars[(mtcars$cyl == 4) | (mtcars$cyl == 5) | (mtcars$cyl == 6),]

# `in` clause, check if mtcars$cy matches `cyl_list` which is vector.
mtcars[mtcars$cy %in% cyl_list,]

mtcars[(mtcars$hp > 100) & (mtcars$hp < 110),]

# Check type
class(mtcars[(mtcars$cyl == 4) | (mtcars$cyl == 6),]) # yield `"data.frame"`