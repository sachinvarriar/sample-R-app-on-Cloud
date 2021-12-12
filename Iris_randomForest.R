library(randomForest)
data("iris")
model = randomForest(Species ~ ., data = iris)
model
save(model, file = "API/model.RData")
