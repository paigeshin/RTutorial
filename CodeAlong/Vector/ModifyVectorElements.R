# Modify Vector Elements

melons = c(1.2, 1.4, 2.4, 3.4)

melons[1] <- 2

melons[2:4] <- c(3,4,5)

melons[5] <- 10 # add new line 

melons = c(1.2, 1.4, 2.4, 3.4, 1.2)

melons[melons < 2] <- 2 

new_melons <- melons[-c(2,4)]