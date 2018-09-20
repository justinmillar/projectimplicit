#' # Break data into discrete categories for coloring-by in histogram. Returns a vector with one of three
#' labels: "Pro-Black Preference"; "No Preference"; "Pro-White Preference"
#' @param iatscore IAT score
#' @keywords iat implicit
#' @export
#' @examples
#' abs_preference()

abs_preference <- function(iatscore) {
  Preference <- cut(iatscore,
    breaks = c(-Inf, -.15, .15, Inf),
    labels = c("Pro-Black Preference",
               "No Preference",
               "Pro-White Preference"),
    right = FALSE)
}
