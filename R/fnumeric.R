#' Make numeric data from factor
#'
#' @param x 
#'
#' @return numeric
#' @export
#' @examples
#' a <- as.factor(c("2","4","6"))
#' as.numeric(a)
#' fnumeric(a)
fnumeric <- function(x) {
    as.numeric(as.character(x))
}

