#' Recode PWS ID
#'
#' This function accepts Public Water System (PWS) IDs and
#' outputs a modified form suitable for CDC data calls.
#'
#' @param x a character vector of PWS IDs
#' @export
#' @examples
#' x <- c(00029, 00045, 00050, 00119)
#' waName(x)

waName = function(x){
  if(!is.numeric(x))
    stop("PWS ID must be numeric")
  if(nchar(x) > 5 | nchar(x) < 2)
    stop("PWS ID must be between 2 and 5 digits (inclusive)")

  ifelse(nchar(x) == 5, 
         paste0("WA00", x),
         ifelse(nchar(x) == 4, 
                paste0("WA000", x),
                ifelse(nchar(x) == 3,
                       paste0("WA0000", x),
                       paste0("WA00000", x))))
}
