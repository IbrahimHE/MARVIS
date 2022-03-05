#' @title egger.table
#' @return Nothing
#' @description egger.table create egger test to be previewed in markdown.
#' @details The purpose of egger.table function, is to create egger test' results in a table to be previewed in markdown.
#' @param x object of class eggers test or an output of egger test
#' @keywords egger.table
#' @examples
#' \dontrun{
#' library(shiny)
#' SMD <- metafor::dat.normand1999
#' colnames(SMD) <- c("Study","source",'n.e' ,'mean.e', 'sd.e', 'n.c' ,'mean.c', 'sd.c')
#' SMDmeta <- meta::metacont(
#' mean.e = mean.e, sd.e = sd.e, n.e= n.e,
#' mean.c= mean.c, sd.c = sd.c, n.c = n.c,
#' data = SMD, sm = 'SMD'
#' )
#' g <- dmetar::eggers.test(SMDmeta)
#' egger.table(g)
#' }
#' @importFrom knitr kable
#' @export egger.table
egger.table <- function(x){
  if(class(x) != "eggers.test") {message('Please enter egger object!')}
  else
    f <- data.frame(
      intercept <- c(round(x$intercept,2)),
      `95% CI` <- c(paste0(round(x$llci,2),' - ' ,round(x$ulci,2))),
      t <- c(round(x$t,2)),
      p <- c(round(x$p,2))
    )
  colnames(f) <- c('intercept','     95% CI','t','p')
  knitr::kable(f[])
}


