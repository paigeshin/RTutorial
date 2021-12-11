# We'll check the mtcars dataset again
data(mtcars)

# Adding a new column - horsepower per weight
mtcars$hp_wt = mtcars$hp/mtcars$wt

# Another way to do it
mtcars['hp_wt'] = mtcars[,'hp']/mtcars[,'wt']

# We can apply other kinds of functions to columns
# just as we've done in vectors
mtcars$miles_gallon_squared = mtcars$mpg**2
mtcars$sqrt_hp = mtcars$hp**2

# Or create a new column that contains the rownames
mtcars$model = rownames(mtcars)