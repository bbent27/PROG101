# What does the following code do?
# Tip: `%%` is the remainder operator. E.g. 10 %% 4 is 2.
instrument_deployed_hm <- c(730, 915, 1345)
#^tell sus hours and minutes (ex: 7:30)
instrument_deployed_h <- floor(instrument_deployed_hm / 100)
#floor takes a single integer, rounding down (so 7.3 becomes 7, 13.45 becomes 13)
#and it is alo divided by 100 so everything becomes a fraction
instrument_deployed_hdec <- (instrument_deployed_hm %% 100) / 60
#^ this puts the decimals in their fractions of hours by dividing by 60
# (dec=decimals)
instrument_deployed <- instrument_deployed_h + instrument_deployed_hdec
#^ this is the decimals now in terms of hours. this is the final answer

# h=hours, m=minutes

# Based on the code above, calculate the duration of instrument deployments
# using the instrument recovery times below. What units do the durations have?
instrument_recovered <- ??? + ???

instrument_recovered_hm <- c(1600, 1920, 2015)
instrument_recovered_h <- floor(instrument_recovered_hm/100)
instrument_recovered_hdec <- (instrument_recovered_hm %% 100) / 60
instrument_recovered <- instrument_recovered_h + instrument_recovered_hdec



instrument_durations <- instrument_recovered - instrument_deployed


# Which site had the longest duration? Use conditional indexing.
site <- c("Santa Cruz", "Santa Rosa", "San Miguel")
instrument_durations == max(instrument_durations)
#santa rosa site has longest duration
#but how do we tell this for long data sets?
site[instrument_durations == max(instrument_durations)]
#^by doing this!! YAY
