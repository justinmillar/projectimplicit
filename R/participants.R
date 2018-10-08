#' # participants
#' @param NULL no parameters
#' @keywords participants
#' @export
#' @examples
#' participants()

participants <- function(data) {
racecount <- as.data.frame(table(data$raceomb))
pctwhite <- sum(racecount$Freq[racecount$Var1==6])
  glue('There were {nrow(data)} participants. The sample was {(pctwhite/nrow(data)*100)}% White')
}

participants(data = raceiatdat)
