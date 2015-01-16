\name{boot.0.20}
\alias{boot.0.20}
\docType{data}
\title{Bootstrapped matrix of time series for young material.
}
\description{
This is the bootstrapped matrices of mean time series produced from the "series.bootstrap" function. 
}
\usage{data(boot.0.20)}
\format{
  The format is:
 num [1:515, 1:999] NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN ...
}
\examples{
data(boot.0.20)
## maybe str(boot.0.20) ; plot(boot.0.20) ...
\dontrun{
# This dataset was produced by running the following. 
data(ring.raw)
data(ring.stand)
data(dbh.po.nc)

#Subset "near-pith" is the material within 0 -20cm from the estimated pith
spline200.sub0.20.n   <- TruncSeriesPithoffset( ring.raw, ring.stand, dbh.po.nc, c(1,200))

boot.0.20   <-  series.bootstrap( spline200.sub0.20.n$sub.series.stand, stat, 999, 
names.stat, aver.by.tree = FALSE)

boot.0.20 <- boot.0.20$boot.series.mean
}
}
\keyword{datasets}
