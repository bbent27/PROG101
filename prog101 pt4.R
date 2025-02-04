# create vectors with the c() (short for combine)
barnacle_density_m2 <- c(2.1, 1.9, 3.0, 4.2)
site <- c("Point Arena", "Point Conception", "San Clemente", "Catalina")
region <- c("NorCal", "CenCal", "SoCal", "SoCal")

# use square brackets to index (i.e; pull values out)
barnacle_density_m2[1]
barnacle_density_m2[4]

# Pull out slices using the : operator
# first two values
barnacle_density_m2[1:2]
str(barnacle_density_m2[1:2])
# ^the structure of that is numeric with 2 elements
site[3:4]
# ^gives us the sites of numbers 3 and 4!

# Pull out non-contiguous indices with c() (example: pull our 1st and 3rd value)
barnacle_density_m2[c(1,3)]

# Output vector sizes

# n -> n (element-wise transformations)
sqrt(barnacle_density_m2)
toupper(site)

# n -> 1 (summaries or aggregations)
length(barnacle_density_m2)
max(barnacle_density_m2)
min(barnacle_density_m2)

# n -> m (other) (take a vector, return a somewhat unpredictable number of values)
unique(region)
# ^good for preventing bugs!
