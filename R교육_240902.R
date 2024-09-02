setwd('c:/data/exam_r')

library(data.table)
library(dplyr)
a <- 1
b <- "Hello"
c <- c(1, 2, 3, 4, 5)

data <- read.csv("data handling_dplyr.csv", fileEncoding = 'euc-kr')

sum(is.na(data))
colSums(is.na(data))
exam_na <- na.omit(data)

# 파생변수 생성하기
# mutate() 함수 사용
# 수식이 있는 경우
# 근태점수 생성하기
# 데이터: exam_na(결측치가 제거된 데이터)

a5_1 <- mutate(exam_na, 근태점수 = 100 - (결근횟수 + (지각횟수/3))*5)
a5_1[1,]
