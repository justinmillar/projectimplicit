library(devtools)
library(roxygen2)
library(testthat)
library(knitr)
devtools::use_package("dplyr")

# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

# Define function that prints size of correlation coefficients
#' @param corrtestvalue Exact correlation value
#' @keywords
#' @export
#' @examples
#' corrsig()
correffectsize <- function(corrtestvalue) {
 if (corrtestvalue < .09) {
      print("negligible")
    } else if (corrtestvalue > .09 & corrtestvalue < .291) {
      print("small")
    } else if (corrtestvalue > .291 & corrtestvalue < .491) {
      print("medium")
    } else {
      print ("large")
    }
}


#' A signifcance function
#'
#' Conditionally prints correlation significance level
#' @param corrsigvalue Exact significance level
#' @keywords
#' @export
#' @examples
#' corrsig()

corrsig <- function(corrsigvalue) {
    if (corrsigvalue < .001) {
      print("p < .001")
    } else {
      print(paste0("p = ", round(corrsigvalue, digits = 3)))
    }
}

# Import sample of Race IAT data from Github
getraceiat <- function() {
  library(haven)
  raceiatdat <- haven::read_sav(file = "https://github.com/lizredford/explore-iat/blob/master/raceiat_N7983.sav?raw=true")
}

hello <- function() {
  print("Hello, world!")
}

