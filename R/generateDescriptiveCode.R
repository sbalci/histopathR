#' generating code for descriptive statistics ----
#'
#' @param dataframe 
#' @param fileLokalization 
#'
#' @return
#' @export
#'
#' @examples
generateDescriptiveCode <- function(dataframe, fileLokalization) {

magicfor::magic_for()

for (i in 1:length(names(dataframe))) {
    y <- paste0("```{r}
feopgl %>% 
  janitor::tabyl(", names(dataframe)[i], ") %>%
  adorn_pct_formatting(rounding = 'half up', digits = 1) %>%
  knitr::kable()
```", "\n", "\n")
    put(y)
}

writeLines(magicfor::magic_result_as_vector(), fileLokalization)
magicfor::magic_free()
}

