#' # writemr
#' @param NULL no parameters
#' @keywords writemr
#' @export
#' @import rmarkdown
#' @import knitr
#' @examples
#' writemr()

writemr <- function() {
  path <- system.file("rmd", "report.Rmd", package = "projectimplicit")
  rmarkdown::render(path, output_file = "~/report.html")
  utils::browseURL("report.html")
}

