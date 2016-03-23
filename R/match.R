#' Negate Value Matching
#'
#' \code{\%nin\%} is a binary operator which returns
#' a logical vector indicating when a match does not exist.
#'
#' @export
#' @examples
#' x <- c(1, 3, 4)
#' y <- 6
#' y %nin% x

`%nin%` <- Negate(`%in%`)
