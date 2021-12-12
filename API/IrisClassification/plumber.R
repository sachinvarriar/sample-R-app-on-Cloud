#
# This is a Plumber API. You can run the API by clicking
# the 'Run API' button above.
#
# Find out more about building APIs with Plumber here:
#
#    https://www.rplumber.io/
#

library(plumber)
library(randomForest)
#* @apiTitle API de clasificacion de flores
#* @param petal_length Longitud del Petalo 
#* @param petal_width Ancho del Petalo 
#* @param sepal_length Longitud del Sepalo 
#* @param sepal_width Ancho del Sepalo 
#* @post /clasificador

function(petal_length, petal_width, sepal_length, sepal_width){
  
  load("~/Documents/personal_datascience_projects/sample R app on cloud/API/model.RData")
  
  test = c(sepal_length, sepal_width, petal_length, petal_width)
  test = sapply(test, as.numeric)
  test = data.frame(matrix(test, ncol = 4))
  
  colnames(test) = colnames(iris[,1:4])
  predict(model, test)
  
}