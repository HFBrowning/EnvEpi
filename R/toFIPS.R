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
  
  y <- ifelse(nchar(x) == 1,
              paste0("5300", x),
              paste0("530", x))
  if (ct){  
    y <- paste0(y, "000000")
  }
  return(y)
}

