# This program explains some basic examples regarding functions

# R has its own build in functions such as means:
mean(c(10,20,30,40))

# But R enables us to develop our own custom functions 
# Let's first obtain the mean using above using 
# a custom made function
custom_mean <- function() {
  # Defining an example vector
  vector_example = c(10, 20, 30, 40)
  # Adding the values
  sum_value = sum(vector_example)
  # Computing the mean
  sum_value/length(vector_example)
}

# Calling the function
custom_mean()

# Extending to any vector that we want - Using arguments
custom_mean <- function(vector_example) {
  # Adding the values
  sum_value = sum(vector_example)
  # Computing the mean
  sum_value/length(vector_example)
}

custom_mean(c(20, 30, 40, 50))

# We are still using a built-in function -> sum() 
# We can also compute that function by ourselves
# For loop example

custom_mean_loop <- function(vector_example) {
  # Adding the values
  sum_value = 0 
  for (i in vector_example) {
    sum_value = sum_value+i
  }
  # Computing the mean
  sum_value/length(vector_example)
}

# Checking if equals
custom_mean(c(20,30,40,50)) == custom_mean_loop(c(20,30,40,50))

# Let's see what happens inside this loop
custom_mean_loop <- function(vector_example) {
  # Adding the values
  sum_value = 0 
  for (i in vector_example) {
    sum_value = sum_value+i
    print(sum_value)
  }
  # Computing the mean
  sum_value/length(vector_example)
}

custom_mean_loop(c(20,30,40,50))


# Another way of controlling the control flow 
# of our function is to use if statements
typeof(c('10','10'))


custom_mean_loop <- function(vector_example) {
  if (typeof(vector_example)=="character") {
    print("Please provide a numeric vector!")
  } else {
    # Adding the values
    sum_value = 0 
    for (i in vector_example) {
      sum_value = sum_value+i
      print(sum_value)
    }
    # Computing the mean
    sum_value/length(vector_example)
  }
}

# Also recall that you have Implicit and Explicit returns
# Implicit returns are what happens when your function
# returns your last instruction

# If you use explicit returns you have to use
# return() inside your function 


