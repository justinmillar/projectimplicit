#' # participants
#' @param NULL no parameters
#' @keywords participants
#' @export
#' @examples
#' participants()

participants <- function(data) {
racecount <- as.data.frame(table(data$raceomb))
pctwhite <- sum(racecount$Freq[racecount$Var1==6])
}
