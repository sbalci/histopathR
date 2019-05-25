# generating code for descriptive statistics ----
magicfor::magic_for()
for (i in 1:length(names(feopgl))) {
    y <- paste0("```{r}
feopgl %>% 
  janitor::tabyl(", names(feopgl)[i], ") %>%
  adorn_pct_formatting(rounding = 'half up', digits = 1) %>%
  knitr::kable()
```", "\n", "\n")
    put(y)
}

writeLines(magicfor::magic_result_as_vector(), "R/generatedCode1.Rmd")
magicfor::magic_free()
