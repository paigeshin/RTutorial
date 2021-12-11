# Convert, Casting 

number = 23 
as.character(number)

word = "23a"
as.numeric(word) # ERROR 

numeric_vector = c(1,2,3,4)
as.character(numeric_vector) # All elements become character 

years_vector = c('2001', '2002', '2003', 'Not a Year') 
as.numeric(years_vector) # Only numbers

logical_vector = c(TRUE, TRUE, FALSE, FALSE)
as.numeric(logical_vector) # TRUE => 1, FALSE => 
