# Load packages used to develop this package
library(devtools)
library(roxygen2)
library(testthat)
library(knitr)

abspref3 <- abspref3(mean(raceiatdat$Implicit))
abspref3

# Document/create NAMESPACE and .Rd files -----
# use Roxygen2 (or really the document function in the devtools package) to process those comments and create the NAMESPACE and .Rd files.
devtools::document()

# Build package
devtools::build()
devtools::install()

# Misc unused notes -----

# Add packages to the imports field
# devtools::use_package("dplyr")
# devtools::load_all() which automatically sources all files in R/

requireNamespace(x, quietly = TRUE)

# Import and tidy Gender-Science data ------------
library(readr)

# Import data from Github
gendersciiatdat <- read_csv(file = "https://github.com/lizredford/explore-iat/raw/master/gendersciiatdat.csv?raw=true") # transform GitHub url from 'View Raw' hyperlink into data frame
gendersciiatdat$Implicit <- gendersciiatdat$implicit
gendersciiatdat$Explicit <- gendersciiatdat$explicit


# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

