# Create Countries Vector
# With populations

countries <- c(10276617,67545757,67020000)

countries

# How many countries do we have? - length
# can help us

length(countries)

# How can we sort vectors? 
sort(countries)

# In Ascending Order
sort(countries, decreasing=TRUE)

# We can assign index names to vectors 
names(countries) <- c('Portugal','United Kingdom',' France')

# Assessing vector elements - By name
countries['Portugal']

# And what about multiple countries?
# Will this work? - No
countries['Portugal','United Kingdom']

# We have to pass a vector to the index
countries[c('Portugal','United Kingdom')]

# We can also access it by numerical position 
countries[1]

# And also use slicing
countries[1:2]

# Accessing the last country:
countries[length(countries)]

# Returning indexes with which function
which(countries > 11000000)

# If we want the Names of the countries that match the condition
names(which(countries > 11000000))