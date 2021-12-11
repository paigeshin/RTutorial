countries_data <- data.frame(country=c("Portugal","France","UK"), 
                       population = c(10280000,66990000,66650000),
                       "EU"= c(TRUE,TRUE,FALSE))

# Creating a data with Spain information
spain_data <- data.frame(country=c("Spain"), 
                         population = c(46754778 ),
                         "EU"= c(TRUE))

# Add spain to countries data

countries_data = rbind(countries_data,spain_data)

# Adding Columns

capital = c('Lisbon','Paris','London','Madrid')

countries_data_with_capital = cbind(countries_data,capital)