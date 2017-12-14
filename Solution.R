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

# Get the geographic boundary of the data set and map it to a NYC regional map.
library('ggmap') # data visulization
library('mapproj') # data visulization

ny_map <- get_map(location = "New York, NY", zoom = 9)
map <- ggmap(ny_map)
map <- map + geom_point(data = train, aes(x = pickup_longitude, y = pickup_latitude), col = 'red')
map

# It can be seen that there are severe outliers in the data set since the min and max 
# of both pickup_longitude and pickup_latitude are way off the region of great New York City. 

