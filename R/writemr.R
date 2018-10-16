#' # writemr
#' @param NULL no parameters
#' @keywords writemr
#' @export
#' @import rmarkdown
#' @import knitr
#' @examples
#' writemr()

writemr <- function(workingdata = raceiatdat100) {
  data(raceiatdat100)
  rmarkdown::render("method-results.Rmd")
}

