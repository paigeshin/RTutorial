# Exercise 1 
kids_ages <- c(12, 11, 12, 13, 14, 13, 12, 10, 12, 12, 14, 13)

# Exercise 1 - a
mean(kids_ages)

# Exercise 1 - b
median(kids_ages)

# Exercise 1 - c

subset_ages = kids_ages < 11 | kids_ages > 13

# Exercise 2 
names(kids_ages) = c("John", "Rachel", "Joe","Anne", 
                     "Theresa","Samuel", "Marcus", "Andrew", 
                     "Kate", "Jane", "Martha", "David")

kids_ages

# Exercise 3 
kids_ages[c('Rachel','Anne')]

# Exercise 4 
kids_ages[5] <- 13

# Exercise 5
under_12 <- names(which(kids_ages < 12))

# Exercise 6 
product_pricing = c(5.6, 11.2, 4.5, 0.25, 1, 23)

# Exercise 7
half_price = product_pricing/2

# Exercise 8 
promotion_1 = product_pricing * c(0.8, 1, 0.6, 1, 0.5, 1)

# Exercise 9 
squared_prices = product_pricing**2

# Exercise 10 
product_pricing[1:3]

# Exercise 11 
maximum_price = max(product_pricing)

# Exercise 12 
num_products = length(product_pricing)

# Exercise 13
transform_price <- (product_pricing+5)/product_pricing