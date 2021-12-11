### Basic ### 

# Define variable and assign vector
# Create vector
demo_population = c(10000, 20000, 40000, 3000)

# Define variable and assign vector
# Create vector
cities_population <- c(10000, 20000, 40000, 3000)

# remove 
rm(demo_population) 

# All becomes string because of last element 
char_cities_population <- c(10000, 20000, 4000, "3000") 

# Sum -> Error, Cant sum characters 
sum(char_cities_population)


