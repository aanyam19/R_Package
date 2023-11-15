#' R_squared
#' 
#' @description
#' This function calculates the r-squared value for a simple linear 
#' regression model..
#' 
#' @param predictor Predictor variable
#' @param response response variable
#' 
#' @return Returns multiple R-squared
#' 
R_squared <- function(predictor, response){
  #Error message: if inputs are not same length
  if(length(predictor) != length(response)){
    return("Input vectors must be of the same length!")
    break
  }
  
  #Define columns of values needed for calculation
  x <- response
  y <- predictor
  x2 <- x**2
  y2 <- y**2
  xy <- c()
  sums <- c()
  n <- length(x)
  
  for(i in 1:length(x)){
    xy[i] <- x[i] * y[i]
  }

  #Create data frame of values
  df <- data.frame(x = x, y = y, x2 = x2, y2 = y2, xy = xy)

  #Calculate sums of all columns
  sums[1] <- sum(df$x)
  sums[2] <- sum(df$y)
  sums[3] <- sum(df$x2)
  sums[4] <- sum(df$y2)
  sums[5] <- sum(df$xy)
  
  #Calculate R-squared value (in parts)
  num <- (n*sums[5] - sums[1]*sums[2])
  sq1 <- sqrt(n*sums[3] - (sums[1])**2)
  sq2 <- sqrt(n*sums[4] - (sums[2])**2)
  denom <- sq1 * sq2
  
  R_squared <- (num / denom)**2
  
  return(R_squared)
}
