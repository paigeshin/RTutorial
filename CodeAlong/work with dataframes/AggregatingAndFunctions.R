data(mtcars)

mtcars$model <- rownames(mtcars)

# Mazda RX4
# Mazda RX4 Wag
# Datsun 710

models = strsplit(x=mtcars$model, split='')
models

models[[1]][1] 
models[[2]][1]
models[[3]][1]

mtcars$brand <- sapply(X=models, FUN='[', n=1)
mtcars$brand <- lapply(X=models, FUN='[', n=1)

?aggregate