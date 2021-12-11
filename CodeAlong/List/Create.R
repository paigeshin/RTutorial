vector = c(1, 2, '3')

typeof(vector)

# You can store a different type of data in list while it's impossible in vector 
my_list = list(1, 2, "3")
typeof(my_list)
multi_object <- list(
  c(1, 2, 3),
  array(1:4, dim=c(2,2)),
  TRUE
)

names(multi_object) = c('Vector', 'Array', 'Logical')

length(multi_object)

str(multi_object)

multi_object <- list(
  "Vector" = c(1, 2, 3),
  "Array" =  array(1:4, dim=c(2,2)),
  "Logical" = TRUE
)

names(multi_object)