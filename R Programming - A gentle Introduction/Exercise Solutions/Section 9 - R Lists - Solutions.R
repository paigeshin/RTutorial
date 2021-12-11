# Exercise 1 
math_list = list(
  array(1:2, dim=c(2,2,2)),
  c(3,9,81),
  matrix(c(9,0,9,0),nrow=2, ncol=2)
)

# Exercise 2 
names(math_list) = c('ThreeDArray','Vector','Matrix')

# Exercise 3
math_list[4] = "I DID IT!"

# Exercise 4
names(math_list)[4] = 'String'

# Exercise 5
length(math_list)

# Exercise 6
math_list[4] = NULL

# Exercise 7
math_vector = math_list[[2]]

# Exercise 8
math_vector = as.array(math_vector)

# Exercise 9
new_matrix = math_list[[1]][,,2]

# Exercise 10
new_matrix*math_vector[2]


