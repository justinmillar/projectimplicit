#' # participants_asglue
#' @param NULL no parameters
#' @keywords participants
#' @export
#' @import glue
#' @examples
#' participants_asglue()

participants_asglue <- function(data) {
racecount <- as.data.frame(table(data$raceomb))
pctwhite <- sum(racecount$Freq[racecount$Var1==6])
  glue::glue('There were {nrow(data)} participants. The sample was {(pctwhite/nrow(data)*100)}% White')
}
