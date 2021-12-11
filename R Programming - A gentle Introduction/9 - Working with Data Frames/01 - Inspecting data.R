# This program reads a dataset and performs 
# some basic and common operations with data.

# Later we will learn how to import external
# datasets to R - for now let's learn a bit 
# about some of the internal datasets that 
# R has available

# Let's take a look at the data() command
data()

# We'll check the mtcars dataset

data(mtcars)

# Calling ? on this dataset gives us
# more documentation

?mtcars

# checking first and bottom rows
head(mtcars, 5)

tail(mtcars, 5)

str(mtcars)

# Some properties of the dataset
nrow(mtcars)

ncol(mtcars)

names(mtcars)

# The powerful summary command
summary(mtcars)
