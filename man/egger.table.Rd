% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/egger.table.R
\name{egger.table}
\alias{egger.table}
\title{egger.table}
\usage{
egger.table(x)
}
\arguments{
\item{x}{object of class eggers test or an output of egger test}
}
\value{
Nothing
}
\description{
egger.table create egger test to be previewed in markdown.
}
\details{
The purpose of egger.table function, is to create egger test' results in a table to be previewed in markdown.
}
\examples{
\dontrun{
library(shiny)
SMD <- metafor::dat.normand1999
colnames(SMD) <- c("Study","source",'n.e' ,'mean.e', 'sd.e', 'n.c' ,'mean.c', 'sd.c')
SMDmeta <- meta::metacont(
mean.e = mean.e, sd.e = sd.e, n.e= n.e,
mean.c= mean.c, sd.c = sd.c, n.c = n.c,
data = SMD, sm = 'SMD'
)
g <- dmetar::eggers.test(SMDmeta)
egger.table(g)
}
}
\keyword{egger.table}
