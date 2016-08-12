#' Read and Merge Multiple Files
#'
#' Read in a directory path that contains multiple homogeneously 
#' formatted csv files to be merged into one data frame.
#'
#' @param mypath directory path
#' @export
#' @details
#' Credit for this function goes to Tony Cookson: 
#' \url{http://www.r-bloggers.com/merging-multiple-data-files-into-one-data-frame/}

multMerge = function(mypath){
  filenames = list.files(path = mypath, full.names = TRUE)
  datalist = lapply(filenames, 
                    function(x){read.csv(file = x,
                                         header = TRUE,
                                         stringsAsFactors = FALSE)})
  Reduce(function(x,y) {merge(x, y, all = TRUE)}, datalist)
}


#' Oracle-style Decode Function
#'
#' Find and replace values by pairs. Includes an optional default 
#' for all 'left-over' values.  
#'
#' @param x A vector
#' @param search Values to be replaced
#' @param replace Values to do the replacing
#' @param default Default value for entries unspecified in \code{search}
#' @export
#' @details
#' Credit for this function goes to flodel: 
#' \url{http://stackoverflow.com/questions/14105651/generate-column-values-with-multiple-conditions-in-r}
#' 

decode <- function(x, search, replace, default = NULL) {
  
  # build a nested ifelse function by recursion
  decode.fun <- function(search, replace, default = NULL)
    if (length(search) == 0) {
      function(x) if (is.null(default)) x else rep(default, length(x))
    } else {
      function(x) ifelse(x == search[1], replace[1],
                         decode.fun(tail(search, -1),
                                    tail(replace, -1),
                                    default)(x))
    }
  
  return(decode.fun(search, replace, default)(x))
}