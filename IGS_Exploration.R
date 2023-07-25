claims <- read.csv("C:\\Users\\metzger.181\\OneDrive - The Ohio State University\\Stat4911_SP23\\IGS Data\\Claims_v1.csv")
dim(claims)
names(claims)

head(claims$UTCDate)
head(claims$ScaledCustomerCount)
head(claims$ScaledClaimCount)
head(claims$ScaledClaimsRatio)

# ClaimsRatio = ClaimCount/CustomerCount
claims$ScaledClaimsRatio==claims$ScaledClaimCount/claims$ScaledCustomerCount

plot(1:nrow(claims), claims$ScaledClaimsRatio, 
     type="l")

# weather station weights
wsw <- read.csv("C:\\Users\\metzger.181\\OneDrive - The Ohio State University\\Stat4911_SP23\\IGS Data\\WeatherStationWeights.csv")
head(wsw)
dim(wsw)

# for a given date, all station weights sum to 1
sum(wsw$Weight[wsw$Date=="2019-02-01"])
table(wsw$WeatherStationId)
table(wsw$Date)

# weather data
library(data.table)
wa <- fread("C:\\Users\\metzger.181\\Downloads\\WeatherActuals.csv")
dim(wa)
head(wa)
hist(wa$HeatIndex)
hist(wa$Temperature)
hist(wa$Humidity)
