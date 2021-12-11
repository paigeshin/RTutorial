library(ggplot2)

# We load the dataset first 

wine_data <- read.csv('./data/winemag-data_first150k.csv')

# Let's plot the distribution of iberian wines

iberian_wines <- wine_data[
  wine_data$country %in% c('Spain','Portugal'),
]

ggplot(
  iberian_wines,
  aes(x=points, fill= country )) + 
  geom_density(alpha=0.2) + 
  scale_fill_manual(name="group",
                    values=c("green","darkred"),
                    labels=c("Portugal","Spain")
                    )


# Computing the spread of the distribution 

# Standard deviation is more "readable"
aggregate(
  iberian_wines$points,
  list(iberian_wines$country),
  FUN=sd)

# Variance is just the standard deviation squared
aggregate(
  iberian_wines$points,
  list(iberian_wines$country),
  FUN=var)

