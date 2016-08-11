#' De-duplicating while Retaining Max
#'
#' This function returns unique entries from a data
#' frame with the highest value in a specified column of
#' interest.
#'
#' @param df A dataframe
#' @param x A character vector of column names to remove on
#' @param value A character entry to sort on and keep the
#' largest (or smallest) value
#' @param max Optional parameter to keep max or min value. Defaults to
#' keeping max.
#' @export
#' @examples
#' data(iris)
#' x <- c("Petal.Length", "Petal.Width")
#' value <- "Sepal.Length"
#' keepMax(iris, x, value)
#' @details
#' This function is specifically for fulfilling common
#' data-call requests. An example is radon measurements
#' at residences each year. If a given residence
#' has more than one measurement in a given year, only the
#' most elevated test should be sent.

keepMax <- function(df, x, value, max = TRUE){
  arg2 <- abs(df[value])
  if (max){
    arg2 <- arg2*(-1) 
  }
  args <- as.list(c(df[x], arg2))
  df2 <- df[do.call(order, args), ]
  rmDupes(df2, x)
}


