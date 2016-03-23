#' Read and Merge Multiple Files
#'
#' Read in a directory path that contains multiple homogeneously 
#' formatted csv files to be merged into one data frame.
#'
#' @param mypath directory path
#' @export
#' @details
#' Credit for this function goes to Tony Cookson: 
#' http://www.r-bloggers.com/merging-multiple-data-files-into-one-data-frame/


multMerge = function(mypath){
  filenames = list.files(path = mypath, full.names = TRUE)
  datalist = lapply(filenames, 
                    function(x){read.csv(file = x,
                                         header = TRUE,
                                         stringsAsFactors = FALSE)})
  Reduce(function(x,y) {merge(x, y, all = TRUE)}, datalist)
}