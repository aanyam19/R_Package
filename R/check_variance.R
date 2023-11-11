#' Check Variance
#' 
#' @description
#' Checks the assumption of equal variance by a scatterplot
#' of residual vs fitted values.   
#' 
#' @param model linear model
#' 
#' @returns Residuals vs fitted values scatterplot
#' 
#' @examples
#' check_variance(linear_model)
#' 
check_variance <- function(model){
  return(plot(model, which = 1))
}
