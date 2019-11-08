mydependent <-  "Surv(time, status)"
explanatory <- "Organ"

mysurvival <- function(mydata, mydependent, explanatory) {
    {{mydata}} %>%
        finalfit::surv_plot(dependent = {{mydependent}},
                            explanatory = {{explanatory}},
                            xlab='Time (months)',
                            pval=TRUE,
                            legend = 'none',
                            break.time.by = 12,
                            xlim = c(0,60)
        )
}

# library(tidyverse)
# mysurvival(mydata = whippleables, mydependent = mydependent, explanatory = explanatory)
# 
# explanatory <- c("Organ", "LVI")
# 
# deneme <- purrr::map(explanatory, mysurvival, mydata = whippleables, mydependent = mydependent)
