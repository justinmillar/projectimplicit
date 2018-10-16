# data-raw/process-raceiatdat.R
# Data import and processing pipeline
# Create mini sample dataset to build into package
# Start with clean N = 8000 dataset
raceiatdat8000 <- haven::read_sav(file = "https://github.com/lizredford/explore-iat/blob/master/raceiat_N7983.sav?raw=true")

# Convert variable names to lowercase. it's better form and is also consistent with the
# other processed project implicit datasets.
raceiatdat8000$implicit <- raceiatdat8000$Implicit
raceiatdat8000$explicit <- raceiatdat8000$Explicit
# Delete uppper case ones
raceiatdat8000 <- raceiatdat8000[,-c(17,18)]

library(readr)
write_csv(raceiatdat8000, "raceiatdat8000.csv") # Export data

# Saving in package as raw data
# Set up the data-raw directory
devtools::use_data_raw()

# This script in the R directory will contain the documentation.
# You can use any name you want.
file.create("R/raceiatdat8000.R")
devtools::use_data(raceiatdat8000, overwrite = T)
