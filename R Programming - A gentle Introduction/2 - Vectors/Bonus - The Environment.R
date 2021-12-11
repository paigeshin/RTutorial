# In this script we explore the environment
# and objects

# Creating Variables 
my_vector = c(1,2,3,4)

# Removing specific objects from the Environment 
rm(my_vector)

# Listing environment Variables 
ls()

# Creating an object
char_var <- 'abc'

# And now listing again
ls()

# Remove Everything from the environment
rm(list = ls())