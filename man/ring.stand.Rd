\name{ring.stand}
\alias{ring.stand}
\docType{data}
\title{
Matrix of time series for the standardised tree ring indices. 
}
\description{
Matrix of time series of standardised ring widths, each series in aligned in columns, with the column heading matching the series ID.
}
\usage{data(ring.stand)}
\format{
  The format is:
 mts [1:515, 1:135] NA NA NA NA NA NA NA NA NA NA ...
 - attr(*, "dimnames")=List of 2
  ..$ : NULL
  ..$ : chr [1:135] "HUP004A" "HUP004B" "HUP004C" "HUP004D" ...
 - attr(*, "tsp")= num [1:3] 1483 1997 1
 - attr(*, "class")= chr [1:3] "mts" "ts" "matrix"
}
\source{
Sourced from The School of Environment, University of Auckland with permission
}
\examples{
data(ring.stand)
## maybe str(ring.stand) ; plot(ring.stand) ...
}
\keyword{datasets}
