# Loading mtcars
data(mtcars)

# Creating the car brand to help us on the merge
mtcars$model <- rownames(mtcars)
car_list = strsplit(mtcars$model, ' ')
mtcars$brand <- sapply(car_list, '[', 1)

# Creating the brands origin 
brands_origin = data.frame(
  brand = c("Mazda","Toyota","Fiat","Volvo","Skoda"),
  country = c("Japan","Japan", "Italy", "Sweden","Czech Republic")
)

# Using SQLDF - This is an example of an Inner Join but using
# an external library that uses SQL code

install.packages('sqldf')

library(sqldf)

# Using SQL code inside R
df3 <- sqldf("SELECT a.*, b.*
              FROM mtcars as a
              INNER JOIN brands_origin as b USING(brand)")
