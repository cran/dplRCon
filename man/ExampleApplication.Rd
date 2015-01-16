\name{Example 2}
\alias{Example 2}

\title{Example 2: Calculate the cordance}
\description{This discribes the workflow required to calculate the concordance published in the Application section of the "Concordance: A measure of similarity between matrices of time series with applications in dendroclimatology".}
\examples{

#library('dplRCon')
#loading data
data(ring.raw)
data(ring.stand)
data(dbh.po.nc)

#Subset "near-pith" is the material within 0 -20cm from the estimated pith
spline200.sub0.20.n   <- TruncSeriesPithoffset( ring.raw, ring.stand, dbh.po.nc, c(1,200))
# Subset "far-pith" is the material further than 20cm from the estimated pith
spline200.sub20.2000.n  <- TruncSeriesPithoffset( ring.raw, ring.stand, dbh.po.nc, c(200,200000))
# Whole dataset, through truncated functions to get in the same formate as the above two datasets
spline200.sub0.2000.n  <- TruncSeriesPithoffset( ring.raw, ring.stand, dbh.po.nc, c(00,200000))

\dontrun{
#series.bootstapped
boot.0.20   <-  series.bootstrap( spline200.sub0.20.n$sub.series.stand, stat, 999, 
names.stat, aver.by.tree = FALSE)
boot.20.2000   <- series.bootstrap(spline200.sub20.2000.n$sub.series.stand, stat, 999, 
names.stat, aver.by.tree = FALSE)

boot.0.20 <- boot.0.20$boot.series.mean
boot.20.2000 <- boot.20.2000$boot.series.mean
}

data(boot.0.20)
data(boot.20.2000)

overall.precision.HUP <- overall.concordance.period(spline200.sub20.2000.n$sub.series.stand , 
spline200.sub0.20.n$sub.series.stand, boot.20.2000,  
boot.0.20 ,1 , concordance.indices, 
c(1880,1999), trim.alpha=0.005, concordance.beta=0.5)


figure.function.concordance (overall.precision.HUP, x.lim=c(1880,2000))
}
