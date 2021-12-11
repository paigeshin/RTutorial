# dimnames
countries_data = array(
  c(200, 200, 300, 340, 230, 120, 540, 400), 
  dim=c(2,2,2), 
  dimnames=list(c('Portugal', 'France'), 
                c('Population', 'GDP'), 
                c('2018', '2019'))
  )

# , , 2018

#          Population GDP
# Portugal        200 300
# UK              200 340

# , , 2019

#          Population GDP
# Portugal        230 540
# UK              120 400


# Extract Data 
countries_data['Portugal', 'Population', '2019']
countries_data['Portugal', 'Population', c('2018', '2019')]
countries_data['France', 'Population', c('2018', '2019')]

dimnames(countries_data)

# Change Key 
dimnames(countries_data)[[1]] <- c('Portugal', 'Spain')

# get number of rows & columns
nrow(countries_data)
ncol(countries_data)

# index 
countries_data[,,2] #Second Matrix

# Remove
countries_data[,,-2] # Remove second matrix 

# Remove Second Column with index
countries_data[,-c(2),]
# Remove Second Matrix with index
countries_data[,,c(2)]

# Get Dimensions after removing second column
dim(countries_data[,-c(2),]) 

