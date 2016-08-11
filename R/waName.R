#' Recode PWS ID
#'
#' This function accepts Public Water System (PWS) IDs and
#' outputs a modified form suitable for CDC data calls.
#'
#' @param x a character vector of PWS IDs
#' @export
#' @examples
#' x <- c("00029", "00045", "00050", "00119")
#' waName(x)

waName = function(x){
  if(!is.numeric(x))
    stop("PWS ID must be numeric")

  ifelse(nchar(x) == 5, 
         paste("WA00", x, sep=""),
         
         ifelse(nchar(x) == 4, 
                paste("WA000", x, sep=""),
                
                ifelse(nchar(x) == 3,
                       paste("WA0000", x, sep=""),
                       paste("WA00000", x, sep=""))))
}
