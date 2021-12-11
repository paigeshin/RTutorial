# Load the dataset first 

wine_data <- read.csv('./data/winemag-data_first150k.csv')

# Visualizing France Distribution
french_wines <- wine_data[wine_data$country=='France',]

library(ggplot2)

ggplot(
  french_wines,
  aes(x=points)
) + geom_histogram(bins=21)

ggplot(
  french_wines,
  aes(x=points)
) + geom_density()


# What's the probability of a French Wine of having
# less than 83 points? 

nrow(french_wines[french_wines$points<=83,])/nrow(french_wines)

# And less than 89 points? We should expect somewhere near
# 50 percent

nrow(french_wines[french_wines$points<=89,])/nrow(french_wines)

# What we are constructing here is a probability 
# Distribution

# What's the probability of a french wine of having exactly 
# 90 points?
nrow(french_wines[french_wines$points==90,])/nrow(french_wines)

# And more than 110?
nrow(french_wines[french_wines$points>110,])/nrow(french_wines)



