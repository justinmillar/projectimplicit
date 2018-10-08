# data-raw/process-racecodebook.R
# Data import and processing pipeline
raceiatdat <- haven::read_sav(file = "https://github.com/lizredford/explore-iat/blob/master/raceiat_N7983.sav?raw=true")
raceiatdat <- raceiatdat[sample(1:nrow(raceiatdat), 100, replace = FALSE),] # Take random sample of 100 rows

library(readr)
write_csv(raceiatdat, "raceiatdat.csv") # Export data

# Saving in package as raw data
# Set up the data-raw directory
devtools::use_data_raw()

# Create a data processing script in the data-raw directory.
# You can use any name you want.
file.create("data-raw/process.R")

# This script in the R directory will contain the documentation.
# You can use any name you want.
file.create("R/raceiatdat.R")
devtools::use_data(raceiatdat, overwrite = T)
