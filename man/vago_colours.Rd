% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vago_colours.R
\docType{data}
\name{vago_colours}
\alias{vago_colours}
\title{VAGO Colours}
\format{
\subsection{\code{vago_colours}}{

An object of class \code{palette} with 4 palettes.
Use \code{names(vago_colours)} to return all palette names.
}
}
\source{
\url{https://github.com/zerogetsamgow/vagotheme}
}
\usage{
vago_colours
}
\description{
Victorian Auditor General's Office colours play an important role in the
VAGO’s identity.
}
\examples{
# Plot all colours
barplot(c(2,5,6,7,4,3,1), col=vago_colours$base)
}
\seealso{
\code{\link[=pal_palette]{pal_palette()}}#'
}
\keyword{datasets}
