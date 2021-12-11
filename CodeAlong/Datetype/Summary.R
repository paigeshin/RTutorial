# This is our example vector (don't change this)
years <- c(2008,2009,2010,2011,2012,2013, "YEAR")

# Extract the underlying data type of the vector years
# and store it in a variable called type_years
type_years = typeof(years)
type_years

# Extract the class data type of the vector years
# and store it in a variable called class_type_years
class_type_years = class(years)
class_type_years

# Test if the vector years is of a numeric class type 
# and store the result in a variable is_numeric
is_numeric  = is.numeric(years)
is_numeric

# Convert the years vector to numeric and store 
# it in a variable called numeric_years
# Remove the last element before conversion
numeric_years = head(years, -1)
numeric_years = as.numeric(numeric_years)
numeric_years

# Convert the years vector to a factor and store
# it in a variable called factor_years
factor_years  = factor(years)
factor_years

# Convert the years vector to a factor and 
# make it ordinal in ascending order 
# remove the NA with indexers 
ordinal_years  = factor(years, order=TRUE)
ordinal_years[!is.na(ordinal_years)]
ordinal_years

# Extract the number of levels of ordinal_years
# store it in a variable named number_levels
number_levels = head(years, -1)
number_levels = factor(number_levels)
number_levels = nlevels(number_levels) 
number_levels

# Create a date vector (with class type as date) 
# with the 1st, 2nd and 3rd of March of 2019
# store those values in a variable called
# first_three_days_march 
first_three_days_march = as.Date(c('2019-03-01', '2019-03-02', '2019-03-03'), format='%Y-%m-%d')
first_three_days_march

# Extract the day of the first_three_days_march
# and store it in a vector called days
days = format(first_three_days_march, '%d') #Output, "1", "2", "3"