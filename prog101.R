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
# absolute is total temperature, anomaly is temperature that deviates from normal


# Begin exploring ---------------------------------------------------------

# How many kefj_* vectors are there?
?kefj
#there are 6 kefj vectors

# How long are they?
#all are 2187966

# What do they represent?
# kefj_temperature: A numeric vector with the temperature readings in Celsius.

# kefj_site: A character vector with the name of the site (one of Aialik, Harris, McCarty, Nuka_Bay, or Nuka_Pass) of the temperature reading.

# kefj_datetime

# kefj_tidelevel

# kefj_exposure

# kefj_season

# Link to sketch

???_datetime <- kefj_datetime[kefj_site == ???]
???_interval <- ???_datetime[-1] - ???_datetime[-???]
t???e(???)


# Problem decomposition ---------------------------------------------------

# When and where did the hottest and coldest air temperature readings happen?

# Link to sketch

# Plot the hottest day

hottest_idx <- ???(kefj_temperature)
hottest_time <- ???[hottest_idx]
??? <- kefj_site[???]
hotday_start <- as.POSIXct("???", tz = "Etc/GMT+8")
hotday_end <- as.POSIXct("???", tz = "Etc/GMT+8")
hotday_idx <- ??? == hottest_site &
  ??? >= hotday_start &
  ??? <= hotday_end
hotday_datetime <- ???[hotday_idx]
hotday_temperature <- ???
hotday_exposure <- ???
plot_kefj(???, ???, ???)

# Repeat for the coldest day

# What patterns do you notice in time, temperature, and exposure? Do those
# patterns match your intuition, or do they differ?

# How did Traiger et al. define extreme temperature exposure?

# Translate their written description to code and calculate the extreme heat
# exposure for the hottest day.

# Compare your answer to the visualization you made. Does it look right to you?

# Repeat this process for extreme cold exposure on the coldest day.


# Putting it together -----------------------------------------------------

# Link to sketch

# Pick one site and one season. What were the extreme heat and cold exposure at
# that site in that season?

# Repeat for a different site and a different season.

# Optional extension: Traiger et al. (2022) also calculated water temperature
# anomalies. Consider how you could do that. Make a sketch showing which vectors
# you would need and how you would use them. Write code to get the temperature
# anomalies for one site in one season in one year.
