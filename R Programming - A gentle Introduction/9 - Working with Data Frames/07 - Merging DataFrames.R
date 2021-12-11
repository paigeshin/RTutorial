# Loading mtcars
data(mtcars)

# Creating the car brand to help us on the merge
mtcars$model <- rownames(mtcars)
car_list = strsplit(mtcars$model, ' ')
mtcars$brand <- sapply(car_list, '[', 1)

# Creating the brands origin 
brands_origin = data.frame(
  brand = c("Mazda","Toyota","Fiat","Volvo","Skoda"),
  country = c("Japan","Japan", "Italy", "Sweden","Czech Republic")
)

# Inner Join Example
inner_df <- merge(mtcars,brands_origin,by="brand")

# Left Join Example
left_df <- merge(mtcars,brands_origin,by="brand", all.x=TRUE)

# Right Join Example
right_df <- merge(mtcars,brands_origin,by="brand", all.y=TRUE)

# Full Join Example
full_df <- merge(mtcars,brands_origin,by="brand", all=TRUE)