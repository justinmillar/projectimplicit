#' Define function that prints size of correlation coefficients
#' @param corrtestvalue Exact correlation value
#' @keywords correlation iat implicit
#' @export
#' @examples
#' correffectsize()
#'
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
