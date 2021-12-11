### More Functions and Dealing with Unexpected Values ### 

melons = c(1.2, 1.4, 2.4, 3.4)

# Average
mean(melons)

# Vector Length 
length(melons)

# Median
median(melons)

# standard deviation
sd(melons)

# sort
sort(melons)

# sort 
reverse_melons = sort(melons, decreasing = TRUE)

new_melons = c(1.2, 1.4, 2.4, 3.4, NA)

# Delete NA
sum(new_melons, na.rm = TRUE)

# Show Help
help(sum)

new_melons = c(1.2, 1.4, 2.4, 3.4, NaN)

sum(new_melons, na.rm = TRUE)

new_melons = c(1.2, 1.4, 2.4, 3.4, 1/0)

# Infinity doesn't work with `na.rm`
sum(new_melons, na.rm = TRUE)