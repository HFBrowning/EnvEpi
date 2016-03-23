#' Removing Duplicate Rows
#'
#' A wrapper function for \code{duplicated()} that
#' finds and removes duplicate row entries from a data
#' frame.
#'
#' @param df A dataframe
#' @param x A character vector of column names to remove on
#' @export
#' @examples
#' data(iris)
#' x <- c("Petal.Length", "Petal.Width")
#' rmDupes(iris, x)
#' @details
#' This function is not robust to slight differences in names
#' and should not be used for addresses unless they have
#' already been corrected.

rmDupes <- function(df, x){
  y <- duplicated(df[x])
  df <- df[!y, ]
  return(df)
}
