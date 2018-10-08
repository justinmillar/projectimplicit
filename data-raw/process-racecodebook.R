# data-raw/process-racecodebook.R
# Data import and processing pipeline
# Import codebook as csv and save as R data
racecodebook <- read.csv(file = "Race_IAT_public_2002-2017_codebook.csv")

# This script in the R directory will contain the documentation.
# You can use any name you want.
file.create("R/racecodebook.R")
devtools::use_data(racecodebook, overwrite = T)
