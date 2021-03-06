
# This is our example vector (don't change this)
students_age <- c(10, 12, 14, 15, 9, 10, 10, NA)

# Store the sum of students age in a variable
# called total_ages (watch out for nas!)
total_ages = sum(students_age, na.rm = TRUE)
total_ages

# Store the mean of students age in a variable
# called mean_ages (watch out for nas!)
mean_age = mean(students_age, na.rm = TRUE)
mean_age

# Store the values of the ages of the 
# first, third and sixth students in a variable
# called students
students  = students_age[c(1,3,6)]
students 

# Assign the names "John, Steven, Colin, Ruth, Anne, 
# Susan, Bill, Charles" to the names property of 
# students_age
names(students_age) <- c('John', 'Steven', 'Colin', 'Ruth', 'Anne', 'Susan', 'Bill', 'Charles')
names(students_age)

# Store the names of the students older than thirteen 
# years old in a variable called over_thirteen
over_thirteen = names(students_age[students_age > 13 & !is.na(students_age)])
over_thirteen

# Change Steven's age to 13 
students_age['Steven'] = 13
students_age['Steven']

# Charles and Colin are not from this class, remove them 
# from the vector and assign the new vector without them 
# to a variable called class_1 
# Remember that to use the "-c" bit we need to use 
# indexes and not names
class_1  = students_age[-c(3, 8)]
class_1

# Create a new vector called log_sqrt_students
# where you first apply a square root to students_age
# and then a logarithm 
log_sqrt_students = log(sqrt(students_age))
log_sqrt_students
