##########################################################################
## Driver: (Name) (GitHub Handle)                                       ##
## Navigator: (Name) (GitHub Handle)                                    ##
## Date: (YYYY-MM-DD)                                                   ##
##########################################################################

library(marinecs100b)

# Guiding questions -------------------------------------------------------

# What does KEFJ stand for?
#Kenai Fjords

# How was temperature monitored?
# using HOBO V2 temperature loggers (sensors) placed at each site

# What's the difference between absolute temperature and temperature anomaly?
# absolute is total temperature, recorded by sensor
#anomaly is temperature that deviates from normal, differences from the
#long-term average


# Begin exploring ---------------------------------------------------------

# How many kefj_* vectors are there?
?kefj
#there are 6 kefj vectors

# How long are they?
#all are 1295038

# What do they represent?
# kefj_temperature: A numeric vector with the temperature readings in Celsius.

# kefj_site: A character vector with the name of the site (one of Aialik, Harris
#, McCarty, Nuka_Bay, or Nuka_Pass) of the temperature reading.

# kefj_datetime: A POSIXct vector with the date and time of the temperature
# record.

# kefj_tidelevel: A numeric vector with the predicted tide level (meters) at the
# time of the temperature reading.

# kefj_exposure: A character vector indicating the type of temperature reading:

# kefj_season: A five-level factor indicating season, relating to mussel life
# history

# Link to sketch
#https://docs.google.com/document/d/1efzdRKuFlE9rl7QUf53E51tYMPeWU7VNZMwCyoknF0E/edit?tab=t.0

kefj_datetime_Nuka_Bay <- kefj_datetime[kefj_site == "Nuka_Bay"]
Nuka_Bay_interval <- kefj_datetime_Nuka_Bay[2:length(kefj_datetime_Nuka_Bay)] - kefj_datetime_Nuka_Bay[1:length(kefj_datetime_Nuka_Bay)-1]
table(Nuka_Bay_interval)

# the most common interval is 30 minutes

# Problem decomposition ---------------------------------------------------

# When and where did the hottest and coldest air temperature readings happen?

# Link to sketch


# Plot the hottest day

hottest_idx <- which.max(kefj_temperature)
hottest_time <- kefj_datetime[hottest_idx]
hottest_site <- kefj_site[hottest_idx]
hotday_start <- as.POSIXct("2018-07-03 00:00", tz = "Etc/GMT+8")
hotday_end <- as.POSIXct("2018-07-04 00:00", tz = "Etc/GMT+8")
hotday_idx <- kefj_site == hottest_site &
  kefj_datetime >= hotday_start &
  kefj_datetime <= hotday_end
hotday_datetime <- kefj_datetime[hotday_idx]
hotday_temperature <- kefj_temperature[hotday_idx]
# calling the smaller thing from the bigger thing- indexing
hotday_exposure <- kefj_exposure[hotday_idx]
plot_kefj(hotday_datetime, hotday_temperature, hotday_exposure)

kefj_temperature


# Repeat for the coldest day

coldest_idx <- which.min(kefj_temperature)
coldest_time <- kefj_datetime[coldest_idx]
coldest_site <- kefj_site[coldest_idx]
coldday_start <- as.POSIXct("2013-01-27 00:00", tz = "Etc/GMT+8")
coldday_end <- as.POSIXct("2013-01-28 00:00", tz = "Etc/GMT+8")
coldday_idx <- kefj_site == coldest_site &
  kefj_datetime >= coldday_start &
  kefj_datetime <= coldday_end
coldday_datetime <- kefj_datetime[coldday_idx]
coldday_temperature <- kefj_temperature[coldday_idx]
# calling the smaller thing from the bigger thing- indexing
coldday_exposure <- kefj_exposure[coldday_idx]
plot_kefj(coldday_datetime, coldday_temperature, coldday_exposure)

# What patterns do you notice in time, temperature, and exposure? Do those
# patterns match your intuition, or do they differ?
# hottest AND coldest in air and air/transition, not the opposite in the water
# ^ that's kinda weird!!

# How did Traiger et al. define extreme temperature exposure?
#extreme warm >= 25°C
#extreme cold <=4°C



# Translate their written description to code and calculate the extreme heat
# exposure for the hottest day.

kefj_exposure[kefj_temperature >= 25]
kefj_exposure[hottest_idx]
# for hottest_idx it's "air/transition"

kefj_exposure[coldest_idx]
# for coldest idx its "air"




?kefj_exposure
extreme_warm <- kefj_temperature
c(extreme_warm>=25)
extreme_warm >= 25

extreme_cold

# Compare your answer to the visualization you made. Does it look right to you?
# yes both of my answers make sense

# Repeat this process for extreme cold exposure on the coldest day.
#already did it, but I think I might have done it wrong

# Putting it together -----------------------------------------------------

# Link to sketch

# Pick one site and one season. What were the extreme heat and cold exposure at
# that site in that season?
#I am picking summer for season and harris for site
?kefj_season


kefj_summer <- "summer"
summer_start <- as.POSIXct("2008-06-01 00:00", tz = "Etc/GMT+8")
summer_end <- as.POSIXct("2008-08-01 00:00", tz = "Etc/GMT+8")
kefj_harris <- "Harris"
summer_idx <- kefj_harris &
  kefj_datetime >= summer_start &
  kefj_datetime <= summer_end
summer_temp <- summer_idx(kefj_temperature)
hotday_summer_harris <- hottest_idx[kefj_]
# ok i tried but now I am lost...

kefj_datetime
# Repeat for a different site and a different season.

# Optional extension: Traiger et al. (2022) also calculated water temperature
# anomalies. Consider how you could do that. Make a sketch showing which vectors
# you would need and how you would use them. Write code to get the temperature
# anomalies for one site in one season in one year.
