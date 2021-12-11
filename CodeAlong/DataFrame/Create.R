countries_data <- data.frame(
  country = c('Portugal', 'France', 'UK'),
  population = c(10280000, 66990000, 66650000), 
  EU = c(TRUE, TRUE, FALSE),
  stringsAsFactors = FALSE 
)

str(countries_data)
# Output
# 'data.frame':	3 obs. of  3 variables:
# $ country   : chr  "Portugal" "France" "UK"
# $ population: num  10280000 66990000 66650000
# $ EU        : logi  TRUE TRUE FALSE

class(countries_data)
typeof(countries_data)

