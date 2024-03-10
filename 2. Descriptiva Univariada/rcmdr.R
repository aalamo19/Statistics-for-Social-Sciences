install.packages("Rcmdr")

install.packages("RcmdrMisc")

library(Rcmdr)
library(RcmdrMisc)
library(MASS)
library(openxlsx)

data(Aids2)
write.xlsx(Aids2,"Aids2.xlsx",asTable = TRUE)
