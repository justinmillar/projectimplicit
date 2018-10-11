#' # writemr
#' @param NULL no parameters
#' @keywords writemr
#' @export
#' @import rmarkdown
#' @import knitr
#' @examples
#' writemr()

writemr <- function(workingdata = raceiatdat) {
  data(raceiatdat)
  rmarkdown::render("method-results.Rmd")
}

