#' # participants
#' @param NULL no parameters
#' @keywords participants
#' @export
#' @examples
#' participants()

participants <- function(raceiatdat) {
racecount<-as.data.frame(table(raceiatdat$raceomb))
pctwhite<-sum(racecount$Freq[racecount$Var1==6])
  glue('There were {nrow(raceiatdat)} participants. The sample was {(pctwhite/nrow(raceiatdat)*100)}% White')
}

participants(raceiatdat)
