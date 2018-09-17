# Create mini sample dataset to build into package
# Start with clean N = 8000 dataset
raceiatdat <- haven::read_sav(file = "https://github.com/lizredford/explore-iat/blob/master/raceiat_N7983.sav?raw=true")
raceiatdat <- raceiatdat[sample(1:nrow(raceiatdat), 100, replace = FALSE),] # Take random sample of 100 rows

### Write data to csv to export ##### ================
library(readr)
write_csv(raceiatdat, "raceiatdat.csv") # Export data to put in data directory
saveRDS(raceiatdat, file = "raceiatdat.RData")




devtools::document()

requireNamespace(x, quietly = TRUE)

# Add packages to the imports field
devtools::use_package("dplyr")
# devtools::load_all() which automatically sources all files in R/

# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'



# Load packages used to develop this package
library(devtools)
library(roxygen2)
library(testthat)
library(knitr)


