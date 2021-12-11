# Creating R lists

# With arrays you can't hold different types of objects
array(c(1,2,3))

# Checking Variable Types of Arrays
my_ar = array(c(1,2,"3"))
typeof(my_ar)

# What happens with lists? - Lists enable you to have multiple data types 
# or even multiple objects 

country_temperatures = list("country"="Portugal","months"=c("Jan","Fev","Mar"), "temperatures"=c(12.5,20.1,22))

# Creating multi_object_list:

multi_object <- list(
  c(1,2,3), 
  matrix(c(1,2,3,4), ncol=2, nrow=2),
  list(TRUE,0,'C')
)

# Assigning Names
names(multi_object)= c('Vector','Matrix','List')

# We can also use the str function 
str(multi_object)

# And the length 
length(multi_object)