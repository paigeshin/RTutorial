# Introducing Factors 
labels = c('Europe', 'Africa', 'Oceania', 'Antartica', 'North America')

factor_labels = factor(labels) # Create Ordinal Variables, by default in alphabetical order

class(factor_labels) # Factor 
typeof(factor_labels) # Integer

as.integer(factor_labels) # Output: 3 1 5 2 4, Numbers match alphabetical orders
nlevels(factor_labels)

altitude_levels = c('High', 'Low', 'Medium', 'Low', 'High', 'Low')

# Define Factor 
altitude_factor = factor(altitude_levels, order=TRUE, levels=c('Low', 'Medium', 'High'))
as.integer(altitude_factor)