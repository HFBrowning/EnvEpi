#' Census Tract IDs and Area
#'
#' A simple table from the U.S. Census Bureau
#' that includes the ID for each census
#' tract in Washington State and the area (in acres)
#' of that census tract.
#'
#' Note: Area was calculated using GIS software -
#' it is not in the same units as 'shape area' from the
#' US Census Bureau shapefiles.
#'
#' @docType data
#'
#' @usage data(ct)
#'
#' @format A data frame with 1,450 rows and 2 columns:
#' \itemize{
#'    \item GEOID10: Census tract IDs from the US Census Bureau
#'    \item Area: Area of census tract in acres
#'    }
#'
#' @source TIGER/Line Shapefiles: \url{http://www.census.gov/geo/maps-data/data/tiger-line.html}
"ct"


#' Census Tract Population
#'
#' This data set contains the estimated population of
#' Washington State census tracts from 2000 to 2015.
#'
#' OFM uses a model of births, deaths, and migration to
#' forecast population size from the US Census Bureau data. These
#' forecasts are estimates, not actual counts of people. OFM
#' adjusts estimates, including previous years, in the fall of each
#' year.
#'
#' Estimates in \code{ctpop} last updated: March 29, 2016
#'
#' @docType data
#'
#' @usage data(ctpop)
#'
#' @format A data frame with 23,344 rows and 3 columns:
#' \itemize{
#'    \item GEOID10: Census tract IDs from the US Census Bureau
#'    \item Year: Year of estimate
#'    \item Population: Population estimate from the Washington
#'    State Office of Financial Management (OFM)
#'    }
#'
#' @source Office of Financial Management: \url{http://www.ofm.wa.gov/pop/smallarea/default.asp}
"ctpop"



