write_report <- function() {
  path <- system.file("rmd", "report-param.Rmd", package = "projectimplicit")
  rmarkdown::render(path, output_file = "~/report.html", params = "ask")
  utils::browseURL("report.html")
}
