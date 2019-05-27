#' Descriptive Statistics For Continious Variables
#'
#' @param mydata dataframe
#' @param myvar vector
#' @param ... ...
#'
#' @return list
#' @export
#'
#' @examples
#' 
#' describeContinious <- function(mydata, myvar, ...) {
#' x <- mydata
#' y <- c(myvar)
#' jmv::descriptives(
#'     data = x,
#'     vars = y,
#'     hist = TRUE,
#'     dens = TRUE,
#'     box = TRUE,
#'     violin = TRUE,
#'     dot = TRUE,
#'     missing = FALSE,
#'     mode = TRUE,
#'     sd = TRUE,
#'     sw = TRUE)
#' }
#' 
#' 
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