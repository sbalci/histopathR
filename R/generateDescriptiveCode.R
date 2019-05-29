#' Generating markdown document with descriptive statistics code
#'
#' @param dataframe dataframe
#' @param fileLokalization character
#'
#' @return file
#' 
#' @importFrom magrittr "%>%"
#' 
#' @export
#'
#' @examples
#' generateDescriptiveCode <- function(dataframe, fileLokalization) {
#' 
#' magicfor::magic_for()
#' 
#' for (i in 1:length(names(dataframe))) {
#'   y <- paste0("```{r}
#' feopgl %>% 
#'   janitor::tabyl(", names(dataframe)[i], ") %>%
#'   adorn_pct_formatting(rounding = 'half up', digits = 1) %>%
#'   knitr::kable()
#' ```", "\n", "\n")
#'   magicfor::put(y)
#' }
#' 
#' writeLines(magicfor::magic_result_as_vector(), fileLokalization)
#' magicfor::magic_free()
#' }
#' 
#' 
#' 
#' 
#' 
#' 
#' 
#' 
#' 
#' 
#' 
#' 
#' 
#' 
#' 
#' 
#' 
#' 
#' 
generateDescriptiveCode <- function(dataframe, fileLokalization) {

magicfor::magic_for()

for (i in 1:length(names(dataframe))) {
    y <- paste0("```{r}
feopgl %>% 
  janitor::tabyl(", names(dataframe)[i], ") %>%
  adorn_pct_formatting(rounding = 'half up', digits = 1) %>%
  knitr::kable()
```", "\n", "\n")
    magicfor::put(y)
}

writeLines(magicfor::magic_result_as_vector(), fileLokalization)
magicfor::magic_free()
}

