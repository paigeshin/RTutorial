library(ggplot2)

# We load the dataset first 

wine_data <- read.csv('./data/winemag-data_first150k.csv')

# Let's plot the distribution of iberian wines

windsor_treaty <- wine_data[
  wine_data$country %in% c('England','Portugal'),
]

ggplot(
  windsor_treaty,
  aes(x=points, fill= country )) + 
  geom_density(alpha=0.2) + 
  scale_fill_manual(name="group",
                    values=c("grey","darkgreen"),
                    labels=c("England","Portugal")
                    )

# Another way of quickly looking at distribution is using 
# box plots

# Good resource to understand boxplots:
# https://www.r-graph-gallery.com/boxplot.html

ggplot(
  windsor_treaty,
  aes(x=country, y = points, color=country)) + 
  geom_boxplot(alpha=0.2)