#' @title Launch MARVIS interactive User Interface
#' @return Nothing
#' @description startMARVIS starts loads the web browser an interactive user interface built using R shiny.
#' @details The purpose of building the interactive user interface is to provide an easy for people who are learning how to do their first meta-analysis and/or are not comfortable with the R command line system. Includes example data for testing out a meta-analysis.
#' @keywords MARVIS
#' @examples
#' \dontrun{
#' startMARVIS()
#' }
#' @importFrom colourpicker colourInput
#' @import fpc ggplot2 ggrepel gridExtra htmlTable kableExtra meta
#' metafor poibin readxl shiny shinyFeedback shinymanager stringr tools
#' @export startMARVIS
# startMARVIS <- function() {
#   shiny::runApp(appDir = system.file("shiny", package="MARVIS"))
# }


#' @title Launch MARVIS interactive User Interface in the web browser
#' @return Nothing
#' @description startMARVIS_Web starts loads the web browser an interactive user interface built using R shiny.
#' @details The purpose of building the interactive user interface is to provide an easy for people who are learning how to do their first meta-analysis and/or are not comfortable with the R command line system. Includes example data for testing out a meta-analysis.
#' @keywords MARVIS
#' @examples
#' \dontrun{
#' startMARVIS_Web()
#' }
#' @export startMARVIS_Web
startMARVIS_Web <- function() {
  shell.exec("https://ibrahimhassaneldaw.shinyapps.io/Meta-analysis-app_v_2/")
}
