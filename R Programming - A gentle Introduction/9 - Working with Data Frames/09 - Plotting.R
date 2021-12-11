# This program reads a dataset and performs 
# some plotting using R
# Let's load the mtcars because we are already
# familiar with it

data(mtcars)

# Plotting weight and horsepower

plot(mtcars$wt, mtcars$hp, main='Car Weight vs Horsepower')

# Table function helps to summarize 
count_cyl = table(mtcars$cyl)

barplot(count_cyl, main="Car Distribution", 
        xlab="Number of cylinders", ylab="Number of Cars",
        col = c('red','yellow','salmon'))

# Cheatsheet for colors 
# https://www.nceas.ucsb.edu/sites/default/files/2020-04/colorPaletteCheatsheet.pdf

# Creating boxplots
boxplot(hp~gear,data=mtcars, main="Distribution")

# Creating histograms
hist(mtcars$hp, breaks=20, col=c('darkgreen'))


# Examples with ggplot2 - this external library
# is super powerful for plotting and is part
# of the tidyverse environment
library(ggplot2)

(
  ggplot(mtcars, 
       aes(x=hp)
       ) + geom_histogram(color='black', fill='salmon', binwidth=40) 
  + ggtitle('Histogram of HorsePower')
)