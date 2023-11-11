#' Create Model
#' 
#' @description
#' This function creates the linear model
#' 
#' @param design linear model design
#' @param data data frame containing the variables in the model design
#' 
#' @returns a linear model that can be used to check other regression
#' assumptions, in statistical tests, etc.
#' 
#' @examples
#' my_model <- create_model(height ~ weight, data = data)
#' 
create_model <- function(design, data){
  return(lm(formula = design, data = data))
}