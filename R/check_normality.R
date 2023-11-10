#' Check Normality
#' 
#' @description
#' Checks if the true errors of the model satisfy the assumption
#' of normality. Data points should ideally fall along the 
#' dotted line. 
#' 
#' @param model linear model
#' 
#' @returns Quantile-Quantile (Q-Q) plot.
#' 
#' @examples
#' linear_model <- lm(height ~ weight, data = data)
#' check_normality(linear_model)
#' 
check_normality <- function(model){
  return(plot(model, which = 2))
}
