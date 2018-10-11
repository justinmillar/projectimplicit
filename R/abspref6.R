#' # Break data into discrete categories for coloring-by in histogram. Returns a vector with one of three
#' labels: "Pro-Black Preference"; "No Preference"; "Pro-White Preference"
#' @param iatscore IAT score
#' @keywords iat implicit
#' @export
#' @examples
#' abspref6()

abspref6 <- function(iatscore) {
  Preference <- cut(iatscore,
  breaks = c(-Inf, -.65, -.35, -.15, .15, .35, .65, Inf),
  labels = c("a strong pro-Black preference",
             "a moderate pro-Black preference",
             "a slight pro-Black preference",
             "no preference for Black or White",
             "a slight pro-White preference",
             "a moderate pro-White preference",
             "a strong pro-White preference"),
    right = FALSE)
}

