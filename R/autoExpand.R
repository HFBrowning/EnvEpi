#' Data Frame Expansion Based on Unique Column Values
#'
#' A wrapper function for \code{expand.grid()} that
#' automatically generates a combination of all
#' factors based upon the unique column entries in a
#' supplied data frame.
#' 
#' @param df A dataframe
#' @export
#' @examples
#' data(HairEyeColor)
#' x <- as.data.frame(HairEyeColor)
#' autoExpand(x)
autoExpand <- function(df){
  x <- lapply(df, unique)
  options(warn=1)
  if(any(!(sapply(x, is.factor)))){
    warning("Non-factor columns. Expansion may be large.")}
  df2 <- expand.grid(x)
  colnames(df2) <- colnames(df)
  return(df2)
}


