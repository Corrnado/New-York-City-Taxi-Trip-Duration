library('tibble') # data wrangling

setwd("~/Documents/Kaggle/New-York-City-Taxi-Trip-Duration")

# read the data into R
train <- as.tibble(fread('train.csv'))
test <- as.tibble(fread('test.csv'))

# brief overview of the data structure
summary(train)
glimpse(train)

## vendor_is is only 1 and 2, supposely it is the id number for different taxi companies.
## pickup_datetime and dropoff_datetime need to be reformed to be used in the future.
## passenger_count is a integer between 1 and 9.
## store_and_fwd_flag is a Y and N boolean variable indicates weather the trip record was 
## held in vehicle memory before sending to the vendor because of the connectivity. it 
## could have some correlation with the destination.
## trip_duration is our target variable to predict.

