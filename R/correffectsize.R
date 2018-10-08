#' Define function that prints size of correlation coefficients
#' @param corrtestvalue Exact correlation value
#' @keywords correlation iat implicit
#' @export
#' @examples
#' correffectsize()
#'
correffectsize <- function(corrtestvalue) {
 if (abs(corrtestvalue) < .09) {
      print("negligible")
    } else if (abs(corrtestvalue) > .09 & abs(corrtestvalue) < .291) {
      print("small")
    } else if (abs(corrtestvalue) > .291 & abs(corrtestvalue) < .491) {
      print("medium")
    } else {
      print ("large")
    }
}
