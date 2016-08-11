#' Recode County Name to 1- and 2-digit codes
#'
#' This function accepts a vector of county names in any case
#' format and converts them to county code. 
#'
#' @param x a character vector of WA state county names
#' @export
#' @examples
#' 
#' x <- c('Adams', 'YAKIMA')
#' toDigit(x)

toDigit = function(x){
  if(!all(is.character(x)))
    stop('County names must be character')
  from <- c('ADAMS', 'ASOTIN', 'BENTON', 'CHELAN', 'CLALLAM',
            'CLARK', 'COLUMBIA', 'COWLITZ', 'DOUGLAS', 'FERRY',
            'FRANKLIN', 'GARFIELD', 'GRANT', 'GRAYS HARBOR',
            'ISLAND', 'JEFFERSON', 'KING', 'KITSAP', 'KITTITAS',
            'KLICKITAT', 'LEWIS', 'LINCOLN', 'MASON', 'OKANOGAN',
            'PACIFIC', 'PEND OREILLE', 'PIERCE', 'SAN JUAN', 
            'SKAGIT', 'SKAMANIA', 'SNOHOMISH', 'SPOKANE',
            'STEVENS', 'THURSTON', 'WAHKIAKUM', 'WALLA WALLA',
            'WHATCOM', 'WHITMAN', 'YAKIMA')
  x <- toupper(x)
  if(!all(x %in% from))
    stop('County entry not in Washington State')
  to <- seq(1, 77, by = 2)  
  as.numeric(plyr::mapvalues(x, from = from, to = to,
                             warn_missing = FALSE))
}
