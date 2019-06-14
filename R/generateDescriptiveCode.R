#' Generating markdown document with descriptive statistics code
#'
#' @param df df
#' 
#'
#' @return file
#' 
#' @importFrom magrittr '%>%'
#' 
#' @export
#'
#' @examples
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
generateDescriptiveCode <- function(df) {
  
  namesdf <- attributes(df)$names
  
  namedf <- deparse(substitute(df))
  
  magicfor::magic_for()
  
  for (i in 1:length(namesdf)) {
    y <- paste0("```{r ", namesdf[i], "}","\n",
                namedf, " %>% 
  janitor::tabyl(", namesdf[i], ") %>%
  adorn_totals('row') %>%
  adorn_pct_formatting(rounding = 'half up', digits = 1) %>%
  knitr::kable()
```"
                
                , "\n", "\n")
    
    magicfor::put(y)
  }
  
  filelokalization <- paste0(namedf, "_descriptiveCode.Rmd") 
  
  writeLines(
    as.character(
      magicfor::magic_result_as_vector()
    ),
    filelokalization)
  
  magicfor::magic_free()    
  
}

