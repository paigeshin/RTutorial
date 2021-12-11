number = 1 

# Underlying Datatype
# Class Level Datatype
# Storing data types in different ways, 
# the underlying object and at the class level, that refers to the nmethods that you can use on that type.

class(number)
# Output: numeric

typeof(number)
# Output: double

my_date = as.Date('2019-01-01')
class(my_date)
# Output: Date

as.numeric(my_date)
# Output: 17897

word = 'newspaper'
typeof(word)
# Output: character

class(1L)
# Output: numeric

mean(number)
# Output(1L)

class(TRUE)

logical_element = FALSE 

class(logical_element)

numeric_vector = c(1, 2, 3, "4") # All elements become String
class(numeric_vector)
typeof(numeric_vector)
class(numeric_vector)

is.numeric("12") # False 
is.character("12") # True 
is.logical(TRUE)
is.numeric(numeric_vector)

