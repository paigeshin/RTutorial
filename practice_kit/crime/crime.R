
# Loading the libraries we will need
library(ggplot2)
library(readxl)

# Load the Data - we use a relative library and the
# the read_xls tidyverse library
crime_data <- read_xls("./data/FBI Crime Data.xls")

# Let's take a look at the head and tail of the dataset 
head(crime_data, 5)

tail(crime_data, 5)

# We have some work to do on this dataset. 
# Our header is on the third row 

colnames(crime_data) <- crime_data[3,]

# The first three rows of the data and the last 21 don't mean 
# much 
# If you notice, we only want rows where the first column 
# is a numeric 

summary(crime_data)

# The first column is a character - let's create a new column 
# called converted_index using sapply

crime_data['converted_index'] = sapply(crime_data[,1], as.numeric)

# Dropping every row where the new column is NA 
crime_data_filter = (
  crime_data[!is.na(
    crime_data[,ncol(crime_data)]
  ),]
)

# Some years have 5 digits so we have to remove them 
# Remember the substr function?
# We can again use sapply here
years = substr(crime_data_filter$Year, 1,4)

# Let's drop the "garbage columns"
drop_columns = c('Year','converted_index')

crime_data_filter = (
  crime_data_filter[,!colnames(crime_data_filter) %in% drop_columns]
)

# EDA phase - let's see the mean of each variable
# Let's do a custom function for this
numeric_crime_data <- data.frame(sapply(crime_data_filter, as.numeric))

# Set row names
row.names(numeric_crime_data) <- years  

# Create a data frame with Rates and a data frame with nominal columns
# Let's use grepl - a nice function to search for a specific string

numeric_crime_data_rates = (
  numeric_crime_data[,grepl( "rate" , names(numeric_crime_data))]
)

numeric_crime_data_nominal = (
  numeric_crime_data[,!grepl( "rate" , names(numeric_crime_data))]
)

# Summary of the data
summary(numeric_crime_data_nominal)

# Labels are a bit big, let's change the row names
# This is the only hard coded part in our pipeline
colnames(numeric_crime_data_nominal) <- c(
  'Population',
  'Violent Crime',
  'Murder',
  'Robbery',
  'Aggravated Assault',
  'Property Crime',
  'Burglary',
  'Theft',
  'Motor Theft'
)


# Let's check the mean of each variable
crime_means = as.data.frame(sapply(numeric_crime_data_nominal,mean))
colnames(crime_means) = c('mean_variable') 

crime_means = tail(crime_means,-1)

# Plot the means 
ggplot(data=crime_means, aes(x=row.names(crime_means),
                             y=crime_means$mean_variable)) +
  geom_bar(stat="identity", fill="steelblue")+
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))


# Plotting it again
ggplot(data=crime_means, aes(x=row.names(crime_means),
                             y=crime_means$mean_variable/1000000)) +
  geom_bar(stat="identity", fill="darkred")+
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  xlab('Type of Crime') + ylab('Mean (in Millions)')

# Plot Multiple Lines - The hard way 
# Tidyverse packages will help in the future with this 
violent_crime = numeric_crime_data_nominal['Violent Crime']
violent_crime$Type = colnames(violent_crime)
violent_crime$Year = rownames(violent_crime)
colnames(violent_crime) = c('Values','Type', 'Year')

robbery = numeric_crime_data_nominal['Robbery']
robbery$Type = colnames(robbery)
robbery$Year = rownames(robbery)
colnames(robbery) = c('Values','Type', 'Year')

property_crime = numeric_crime_data_nominal['Property Crime']
property_crime$Type = colnames(property_crime)
property_crime$Year = rownames(property_crime)
colnames(property_crime) = c('Values','Type', 'Year')

evolution_crime = rbind(violent_crime, robbery, property_crime)

# Plotting Line Plots
ggplot(data=evolution_crime, aes(x=evolution_crime$Year,
                                 y=evolution_crime$Values/1000000,
                                 group=evolution_crime$Type,
                                 color=evolution_crime$Type
)) +
  geom_line() +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  xlab('Years') + ylab('Count of Crimes (In Millions)') + 
  labs(color='Type of Crime')

# Let's see the crime that changed most in terms of percent
minimum_year = numeric_crime_data_nominal[min(row.names(numeric_crime_data_nominal)),]
maximum_year = numeric_crime_data_nominal[max(row.names(numeric_crime_data_nominal)),]
maximum_year/minimum_year