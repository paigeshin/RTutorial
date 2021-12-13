# Not Explicit Return
custom_mean <- function() {
  abc <- c(1, 2, 3)
  sum_vector <- sum(c(10, 20, 30, 40)) 
}

# Explicit Return 
custom_mean <- function() {
  sum_vector <- c(10, 20, 30, 40)
  return (sum_vector / length(c(10, 20, 30, 40)))
}

# Arguments 
custom_mean_args <- function(my_vector) {
  sum_vector <- sum(my_vector)
  mean_vector <- sum_vector/length(my_vector)
  return (mean_vector)
}

# Control Flow - Loops
custom_mean_for <- function(my_vector) {
  sum_vector <- 0 
  for(element in my_vector) {
    print(sum_vector)
    sum_vector = sum_vector + element
  }
  mean_vector <- sum_vector/length(my_vector)
}

# Control Flow - Conditional
custom_mean_if <- function(my_vector) {
  if(class(my_vector) == 'character') {
    print('Please pass a numeric vector!')
  } else {
    sum_vector <- 0 
    for(element in my_vector) {
      sum_vector <- sum_vector + element
    }
    mean_vector <- sum_vector/length(my_vector)
    return (mean_vector)
  }
}

# Control Flow - While Loops
while_func <- function(my_vector) {
  i <- 1
  while(i <= length(my_vector)){
    print(my_vector[i])
    i <- i+1
  }
  print("We've reached the end!")
}


get_vowels <- function(string) {
  vector_string = strsplit(string, "")[[1]]
  
  for (letter in vector_string) {
    if (letter %in% c('a','e','i','o','u')) {
      print('Found a vowel!')
    }
  }
}

result <- get_vowels('prEhistoric')

