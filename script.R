# Author: Robert
# Date: 10.10.2022

library(tidyverse)
library(openxlsx)

write.csv2(x = mtcars %>% filter(cyl > 4), file = "mtcars.csv")

wb <- createWorkbook()
addWorksheet(wb = wb, sheetName = "mtcars")
writeData(wb = wb, sheet = "mtcars", x = mtcars)
saveWorkbook(wb = wb, file = "mtcars.xlsx", overwrite = TRUE)
