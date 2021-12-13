# Load Data
# If you run `data()`, you can see all the data provided by R (for practice)
# Provide the name of data sets
data(mtcars) 

# Find information
?mtcars 

# Check dimension
dim(mtcars) 

# Check columns 
ncol(mtcars)

# check rows
nrow(mtcars)

# look at the head of tables 
head(mtcars)

# Extract First Five Rows of Data
head(x=mtcars, n=5)

# Check information 
?head()

# look at the tail of tables
tail(mtcars)

# Extract Last Five Rows of Data 
tail(x=mtcars, n=5)

# Structure
str(mtcars)

# Get row names
row.names(mtcars)

# Assign result 
brands = row.names(mtcars)

# Column Names
colnames(mtcars)

# Summary 
summary(mtcars)