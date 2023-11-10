#' Check Linearity
#' 
#' @description
#' Checks the assumption of linearity by calculating the Spearman 
#' correlation coefficient between two quantitative variables.
#' If your correlation coefficient is close to |1|, then that
#' indicates a strong linear relationship.  
#' 
#' @param col1 numerical vector
#' @param col2 numerical vector
#' 
#' @returns the estimated correlation coefficient
#' 
#' @examples
#' check_linearity(data$height, data$weight)
#' 
check_linearity <- function(col1, col2){
  correlation <- cor.test(col1, col2)
  return(correlation$estimate)
}
