dates = as.Date(c('2019-01-01', ' 2019-01-02'))

class(dates) # Check class 

typeof(dates) # Check underlying value

as.numeric(dates) # Output: 17897 17898

as.Date(c('01/01/2019'), format='%d/%m/%y')

example_date = as.Date(c('01Jan2019'), format='%d%b%Y')

format(dates, '%d')

days = as.numeric(format(dates, '%d'))