data(mtcars)

# Add new column `model`
mtcars$model <- rownames(mtcars)

# Check document 
?strsplit

# Split 
models = strsplit(x = mtcars$model, split=' ') # output models, 32
class(models[[1]])

models[[1]][1]
models[[2]][1]
models[[3]][1]

# '[' => indexing functions, If you want to extract an object from a specific position while looping through a list or another type of object
# You can just have to use instead of a function. '['
# n => What's the element that we want to index on our project?
sapply(X=models, FUN='[', n=1)
sapply(X=models, FUN='[', n=2)

mtcars$brand <- sapply(X=models, FUN='[', n=1)
mtcars$brand <- lapply(X=models, FUN='[', n=1)

?aggregate

hp_brands <- aggregate(
  x=mtcars$hp,
  by=list(mtcars$brand),
  FUN=mean
)

colnames(hp_brands) <- c('brand', 'mean_hp')





