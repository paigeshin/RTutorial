multi_object <- list(
  "Vector" = c(1,2,3),
  "Array" = array(1:4, dim=c(2,2)),
  "Logical" = TRUE 
) 

# List Level => One Dimensional Object

# Underlying Level => Multi Dimensional Object 

# It does not work 
multi_object[1][1]

# It does work 
multi_object[[1]][1]

# It does not work 
multi_object[2][2,2]

# It does work 
multi_object[[2]][2,2]

# List Level 
multi_object[c(1, 2)][2]

multi_object[['Vector']]

# Select Item `$`
multi_object$Vector[1] 