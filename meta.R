# Load packages used to develop this package
library(devtools)
library(roxygen2)
library(testthat)
library(knitr)

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

# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

