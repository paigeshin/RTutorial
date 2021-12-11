# Easy Exercises - these exercises are really beginner level
# and you should be able to complete them with one or two lines of
# code.

# Load the walmart_data and walmart_features files 
walmart_data = 
walmart_features = 

# Store the number of rows of walmart_data in a variable called 
# n_rows 
n_rows = 

# Print the first 5 rows of the dataframe walmart_data


# Count the number of rows per store using the Table
# command and store the resulting object in R with the name
# rows_per_store
rows_per_store = 

# Convert rows_per_store to a data frame - Rewrite
# the object
rows_per_store = 

# Medium Level Exercises

# Which store has the most rows? Retrieve this value using R code


# Sum the sales by store on walmart_data
# and store the data in a sum_by_store object
sum_by_store = 

# rename the columns of the data frame produced
# above as store_number and total_sales



# Plot bar plot using base r with sorting total sales 
# from sales with most sales to stores least sales 
# Give a title to the plot "Sales By Store" 
# and color the bars darkgreen
# ignore the x labels for now


# Compute the mean of every column in walmart_features


# Create a new column in walmart features called 
# standardized_cpi subtracting the mean and dividing by the 
# standard deviation

# Hint: Standardization means that you subtract the mean of the
# variable to the variable itself first and then you divide the resulting
# calculation by the standard deviation,

# Here is more info: https://www.statisticshowto.com/standardized-values-examples/

# Note: CPI has NAS!


# Produce a line plot for sales of store number 1 for every department
# Add points to your plot if you want to
# Add labels to x and y

# Hint: Check the function lines()


# Use GGPlot to plot the total sales per week for store 20
# add points to your plot
# use as.Date on the x value in aes to format the x-axis labels


# Plot the sales for the top 5 departments with more sales
# for store 2 with ggplot2 with different colors
# Plot a line per department
# Hint: Use the Group on aes to plot different time series


# In the graph above, convert the Dept to a factor and
# the date to a date type column


# Open question (no need to code)
# Which department shows a more seasonal trend? 