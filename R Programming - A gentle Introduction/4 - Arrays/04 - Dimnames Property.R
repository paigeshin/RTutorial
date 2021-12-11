# Naming Dimensions - 
# Example of multi-dimensional array with
# dimnames
# We have to give a list to dimnames argument
# but don't worry too much about this new
# type of object, we will study it in
# a subsequent section
country_data = array(
  c(200,200,300,340,230,120,540,400),
  dim=c(2,2,2),
  dimnames= list(c("Portugal","UK"),
                 c("Population","PIB"),
                 c("2018","2019")))

# Subsetting by index
country_data['Portugal','Population','2018']

# What if we search for dimensions that do not exist?
country_data['France','Population','2018']

# Obtain the number of dimensions from data
dim(country_data)

# Reassigning Values
country_data['Portugal','Population','2019'] <- 20000

country_data

# There are other cool properties we can use
# in arrays - for example extracting the number
# of rows and number of columns - the 
# size of our first and second dimension

# This is more suitable to two dimensional arrays (matrixes)
nrow(country_data)
ncol(country_data)
