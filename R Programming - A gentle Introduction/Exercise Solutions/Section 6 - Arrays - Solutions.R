# Exercise 1 
fourdim = array(1:10, dim=c(2,2,2,2))

# Exercise 2 
fourdim[2,2,2,2] <- NA

# Exercise 3 
mean(fourdim, na.rm=TRUE)

# Exercise 4
threed = array(c(155, 261, 132000,423.4, 321, 137000,
                 105, 240, 118000,157.64, 260, 139000), 
               dim = c(3,2,2),
               dimnames=list(c("Stock Price", "Revenue", "Employees"),
                             c("2018", "2019"),
                             c("Apple","Microsoft")))

# Exercise 5
diff_price <- threed['Stock Price','2019', 'Apple']-threed['Stock Price','2018', 'Apple']

# Exercise 6 
(diff_price/threed['Stock Price','2018', 'Apple'])

# Exercise 7 
apple = threed[,,'Apple']

# Exercise 8 
stock_price = threed['Stock Price',,]

# Exercise 9
dim(stock_price)

# Exercise 10 
class(stock_price) == class(threed)

# Exercise 11
price_vector <- as.vector(stock_price[,2])


