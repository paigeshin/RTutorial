# Load Data provided by R 
data(mtcars)

mtcars$hp

mtcars$wt

# Add New column
mtcars$hp_wt <- mtcars$hp / mtcars$wt

# Add New column, the second way
mtcars[,'hp_wt'] <- mtcars[,'hp'] / mtcars[,'wt']

# Add New column by calculating
mtcars['hp_squared'] <- mtcars$hp ** 2
mtcars['hp_squared']

