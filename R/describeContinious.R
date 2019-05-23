#' Title
#'
#' @param mydata 
#' @param myvar 
#'
#' @return
#' @export
#'
#' @examples
describeContinious <- function(mydata, myvar, ...) {
    x <- mydata
    y <- c(myvar)
    jmv::descriptives(
        data = x,
        vars = y,
        hist = TRUE,
        dens = TRUE,
        box = TRUE,
        violin = TRUE,
        dot = TRUE,
        missing = FALSE,
        mode = TRUE,
        sd = TRUE,
        sw = TRUE)
}