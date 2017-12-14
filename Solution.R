library('tibble') # data wrangling


setwd("~/Documents/Kaggle/New York City Taxi Trip Duration")

train <- as.tibble('train.csv')
test <- as.tibble('test.csv')

summary(train)
glimpse(train)
