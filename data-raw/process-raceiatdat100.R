# data-raw/process-raceiatdat.R
# Data import and processing pipeline
# Create mini sample dataset to build into package
# Start with clean N = 8000 dataset
raceiatdat100 <- haven::read_sav(file = "https://github.com/lizredford/explore-iat/blob/master/raceiat_N7983.sav?raw=true")
raceiatdat100 <- raceiatdat[sample(1:nrow(raceiatdat), 100, replace = FALSE),] # Take random sample of 100 rows

# Convert variable names to lowercase. it's better form and is also consistent with the
# other processed project implicit datasets.
raceiatdat100$implicit <- raceiatdat100$Implicit
raceiatdat100$explicit <- raceiatdat100$Explicit
# Delete uppper case ones
raceiatdat100 <- raceiatdat100[,-c(17,18)]

library(readr)
write_csv(raceiatdat100, "raceiatdat100.csv") # Export data

# Saving in package as raw data
# Set up the data-raw directory
devtools::use_data_raw()

# This script in the R directory will contain the documentation.
file.create("R/raceiatdat100.R")
devtools::use_data(raceiatdat100, overwrite = T)
