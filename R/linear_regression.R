#' Linear Regression
#' 
#' @description
#' This function fits a simple linear model from two input vectors.
#' 
#' @param predictor Predictor variable
#' @param response response variable
#' 
#' @return Returns a list of the model coefficients, residuals, 
#' and fitted values.
#' 
linear_regression <- function(predictor, response){
  #Error message: if inputs are not same length
  if(length(predictor) != length(response)){
    return("Input vectors must be of the same length!")
    break
  }
  
  #Create simple linear model
  model <- lm(response ~ predictor)
  
  return(summary(model))
}