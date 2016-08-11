#' Recode 1- and 2-digit County Code to FIPS
#'
#' This function accepts 1- and 2-digit county codes
#' and converts them either to county or census tract
#' FIPS.
#'
#' @param x a vector
#' @param ct option to convert to census tract or county. Defaults
#' to census tract
#' @export
#' @examples
#' x <- c(3, 7, 63)
#' toFIPS(x, ct = FALSE)

toFIPS = function(x, ct = TRUE){
  #Note: need to add error for unused arguments. Right now
  #something like toFIPS(3,5) works when it shouldn't. 
  
  if(!all(is.numeric(x)))
    stop("County code must be numeric")
  if(!all(x %in% seq(1, 77, by=2)))
    stop("County code must be an odd one or two digit integer code between 1 and 77 (inclusive)")
  y <- ifelse(nchar(x) == 1,
              paste0("5300", x),
              paste0("530", x))
  if (ct){
    y <- paste0(y, "000000")}
  return(y)
}


