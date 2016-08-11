#' Recoding Drinking Water Analytes to WTN categories
#'
#' This function supplies labels to analyte values within given
#' cutpoints. 
#'
#' @param df A dataframe
#' @param cuts A vector of cutpoints
#' @param labels A character vector of category labels
#' @param col Optional parameter to specify the column name in df
#' that corresponds to analyte concentration. Defaults to literally
#' "Concentration" 
#' @export
#' @details
#' This function is specifically for fulfilling drinking water
#' analyte formatting for WTN. 



analyteRecode <- function(df, breaks, labels, col = "Concentration"){
  if (length(breaks) != (length(labels) + 1)) {
    stop("Number of cutpoints needs to be one less than the number
         of labels")}
    
  df2 <- cbind(df, df[col])
  colnames(df2)[length(df2)] <- "Categories"
  
  #The initial set up:  
  df2$Categories[df2[[col]] <= breaks[1] & 
                   df2["ND"] == "ND"] <- "ND"
  df2$Categories[df2[[col]] <= breaks[1] & 
                   df2["ND"] == "Sample"] <- labels[1]
  
  #Can use a loop til the end
  for (i in 1:length(breaks)) {
    df2$Categories[df2[[col]] > breaks[i] & 
                     df2[[col]] <= breaks[i + 1]] <- labels[i + 1]
  }
  return(df2)
}



