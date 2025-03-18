# need to keep resintalling dev tools for some reason 
install.packages("devtools")
library(devtools)

renv::install("shriyajam/testPackage")

library(testPackage)
myfunc(3, 5)

## create matrix algebra function

estimate_beta <- function(X, Y) { 
  # get X'X inverse 
  XXinverse <- solve(t(X) %*% X)

  # multiply X'X inverse by X'Y
  XXinverseXY <- XXinverse %*% t(X) %*% Y

  # return the coefficients
  coefficients <- XXinverseXY
  return(coefficients)
}

## create the ggplot2 theme function 
install.packages("ggplot2")
library(ggplot2)

usethis::create_package("/Users/shriyajam/Desktop/Brown/Classes/Spring 2025/Econ 2020/testPackage")
usethis::use_package("ggplot2")

## three changes: background color, axis text size, and title 
## favorite theme is the minimalist one

my_theme <- function() {
  theme_minimal() +  
    theme(
      plot.background = element_rect(fill = "lightgray", color = NA),  
      axis.text = element_text(size = 14, color = "darkblue"),          
      plot.title = element_text(size = 16, color = "darkred", face = "bold")  
    )
}

# install and load roxygen again for documentation 
install.packages("roxygen2")
library(roxygen2)


#' Estimating Beta
#'
#' Calculates estimated beta hat or reg coeffiients
#' using the equation (X'X)^{-1} X' y} for beta hat.
#' 
#' @param X Numeric matrix of independent variables, n x k
#' @param Y Numeric vector of dependent variable values, n x 1
#' 
#' @return Numeric vector of the coefficients
#' @export
#'
#' @examples
#' # Example usage
#' X <- cbind(1, c(1, 2, 3, 4, 5))
#' y <- c(1, 2, 3, 4, 5)
#' estimate_beta(X, y)
estimate_beta <- function(X, Y) {
  # get X'X inverse
  XXinverse <- solve(t(X) %*% X)

  # multiply X'X inverse by X'Y
  XXinverseXY <- XXinverse %*% t(X) %*% Y

  # return the coefficients
  coefficients <- XXinverseXY
  return(coefficients)
}

devtools::document()