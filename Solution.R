library('tibble') # data wrangling

setwd("~/Documents/Kaggle/New-York-City-Taxi-Trip-Duration")

# read the data into R
train <- as.tibble(fread('train.csv'))
test <- as.tibble(fread('test.csv'))

# brief overview of the data structure
summary(train)
glimpse(train)

## Vendor_is is only 1 and 2, supposely it is the id number for different taxi companies.
## Pickup_datetime and dropoff_datetime need to be reformed to be used in the future.
## Passenger_count is a integer between 1 and 9.
## Store_and_fwd_flag is a Y and N boolean variable indicates weather the trip record was 
## held in vehicle memory before sending to the vendor because of the connectivity. it 
## could have some correlation with the destination.
## Trip_duration is our target variable to predict. 

# Get the time boundary of the data set.
pdate = ymd_hms(train$pickup_datetime)
summary(pdate)

# The time frame of the data collection is 01.01.2016 to 06.30.2016.
