#' Make numeric data from factor
#'
#' \code{fnumeric} converts factors to numeric data ignoring the levels
#' 
#' @param x Factor.
#'
#' @return Numeric.
#' 
#' @export
#' 
#' @section Warning:
#' I recommend always to double-check after recoding.  
#' 
#' @examples
#' a <- as.factor(c('2','4','6'))
#' as.numeric(a)
#' fnumeric(a)
fnumeric <- function(x) {
    as.numeric(as.character(x))
}

