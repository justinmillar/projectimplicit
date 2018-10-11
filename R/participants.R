#' # participants
#' @param NULL no parameters
#' @keywords participants
#' @export
#' @examples
#' participants()

participants <- function(data) {
racecount <- as.data.frame(table(data$raceomb))
pctwhite <- (round(sum(racecount$Freq[racecount$Var1 == 6])/sum(racecount$Freq),2))*100
}

