library(randomForest)
data("iris")
#build model
model = randomForest(Species ~ ., data = iris)
model
save(model, file = "API/model.RData")
