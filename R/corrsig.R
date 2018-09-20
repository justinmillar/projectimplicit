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
      print("p < .001")
    } else {
      print(paste0("p = ", round(corrsigvalue, digits = 3)))
    }
}
