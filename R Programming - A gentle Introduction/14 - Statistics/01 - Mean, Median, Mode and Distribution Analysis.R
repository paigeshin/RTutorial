# We load the dataset first 

wine_data <- read.csv('./data/winemag-data_first150k.csv')

mean_points_by_country = aggregate(
  wine_data$points,
  list(wine_data$country),
  FUN = mean
)

median_points_by_country = aggregate(
  wine_data$points,
  list(wine_data$country),
  FUN = median
)

# R does not have a built in mode function, 
# let's simulate one for one country 

# We see that England has the highest rated wines 
# Both in median and mean - 
# let's see the size 

table(wine_data$country)

# Notice how the mean is similar to the median for France 
# in the dataset - what this means is that we have an approximately 
# simetric distribution

french_wines_summary = table(wine_data[wine_data$country=='France','points'])

# Using the names to access the R object header 
# table returns a 'table' class which is a bit odd to work 
# with - if you find it difficult always transform to 
# a data frame or other object that you are more
# acquainted with

names(sort(french_wines_summary)[length(french_wines_summary)])

# The most common score for french wines is 90

# Let's visualize France distribution

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


# German wines distribution has a bit skewness

german_wines <- wine_data[wine_data$country=='Germany',]

ggplot(
  german_wines,
  aes(x=points)
) + geom_density()


# Overlayered plots 

iberian_wines = wine_data[
  wine_data$country %in% c('Spain','Portugal'),
]

ggplot(
  iberian_wines,
  aes(x=points, fill= country )) + 
  geom_density(alpha=0.2) + 
  scale_fill_manual(name="group",
                    values=c("darkgreen","darkred"),
                    labels=c("Portugal","Spain")
  )


mean(iberian_wines[iberian_wines$country=='Portugal','points'])

median(iberian_wines[iberian_wines$country=='Portugal','points'])

# Let's see a case of high skewness:

ggplot(
  wine_data[wine_data$country=='Mexico',],
  aes(x=points)
) + geom_density()

mean(wine_data[wine_data$country=='Mexico','points'])
median_points_by_country(wine_data[wine_data$country=='Mexico','points'])



