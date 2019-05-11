set.seed(2017)

library(readxl)
cmv <- read_excel("Desktop/cmv tüm vakalar serdar.xlsx")
View(cmv)

names(cmv) <- c(names(cmv)[1:2], "cmv")

table(cmv$cmv)

library(tidyverse)

sampleCMV <- cmv %>% 
    filter(cmv == 'negatif') %>% 
    sample_n(60)

writexl::write_xlsx(x = sampleCMV, path = "sampleCMV.xlsx")

