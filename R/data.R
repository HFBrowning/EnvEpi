#' Census Tract IDs and Area
#'
#' A simple table from the U.S. Census Bureau 
#' that includes the ID for each census 
#' tract in Washington State and the area in acres
#' of that census tract. 
#' 
#' @docType data
#' 
#' @usage data(ct)
#' 
#' @format \code{ct} contains one column of census tract 
#' IDs (\code{GEOID10}) and one column of the area of 
#' each census tract in acres (\code{AREA_ACRES}). 
#' \code{AREA_ACRES} was calculated using GIS software -
#' it is not in the same units as 'shape area' from the 
#' US Census Bureau shapefiles.
#' 
#' @source TIGER/Line Shapefiles: \url{http://www.census.gov/geo/maps-data/data/tiger-line.html}
"ct"