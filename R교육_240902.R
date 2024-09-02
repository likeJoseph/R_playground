setwd('c:/data/exam_r')

library(data.table)
library(dplyr)
a <- 1
b <- "Hello"
c <- c(1, 2, 3, 4, 5)

data <- read.csv("data handling_dplyr.csv", fileEncoding = 'euc-kr')

sum(is.na(data))
colSums(is.na(data))
na.omit(data)
