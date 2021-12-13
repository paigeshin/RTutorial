# Load the dataset first 

wine_data <- read.csv('./data/winemag-data_first150k.csv')

# Set seed enables the replication 
# of results 
set.seed(10)

# Compute a random sample

sampled_data = wine_data[sample(nrow(wine_data)*0.2),]

# Stratified sample in R 
stratified(sampled_data, "country", .1)

# Dplyr is part of the tidyverse
# universe of packages
# they are really well suited to 
# data science
# https://www.tidyverse.org/

library(dplyr)

# Ask for 100 examples from wine_data
dplyrsample <- wine_data %>%
  sample_n(100)

# Let's ask for a stratified sample
# with examples
dplyrsample_country <- wine_data %>%
  group_by(country) %>%
  sample_n(1)

# Using a proportion
dplyrsample_country_prop <- wine_data %>%
  group_by(country) %>%
  sample_frac(0.1)
