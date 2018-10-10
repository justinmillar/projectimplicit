#' A signifcance function
#'
#' Conditionally prints correlation significance level
#' @param corrsigvalue Exact significance level
#' @keywords correlation iat implicit
#' @export
#' @examples
#' corrsig()

corrsig <- function(corrsigvalue) {
    if (corrsigvalue < .001) {
      print(".001")
    } else {
      print(round(corrsigvalue, digits = 3))
    }
}
