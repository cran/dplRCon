\name{boot.20.2000}
\alias{boot.20.2000}
\docType{data}
\title{Bootstrapped matrix of time series for old material.
}
\description{
This is the bootstrapped matrices of mean time series produced from the "series.bootstrap" function. 
}
\usage{data(boot.20.2000)}
\format{
  The format is:
 num [1:515, 1:999] 1.26 1.045 0.731 0.74 0.705 ...
}
\examples{
data(boot.20.2000)
## maybe str(boot.20.2000) ; plot(boot.20.2000) ...

\dontrun{
# This dataset was produced by running the following. 
data(ring.raw)
data(ring.stand)
data(dbh.po.nc)

# Subset "far-pith" is the material further than 20cm from the estimated pith
spline200.sub20.2000.n  <- TruncSeriesPithoffset( ring.raw, ring.stand, dbh.po.nc, c(200,200000))

boot.20.2000   <- series.bootstrap(spline200.sub20.2000.n$sub.series.stand, stat, 999, 
names.stat, aver.by.tree = FALSE)

boot.20.2000 <- boot.20.2000$boot.series.mean
}
}
\keyword{datasets}
