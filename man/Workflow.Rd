\name{Example 1}
\alias{Example 1}

\title{Example 1: Producing correlation figure}
\description{This describes the workflow required to generate the correlation figure published in "On the influence of tree size on the climate - growth relationship of New Zealand kauri (Agathis australis): insights from annual, monthly and daily growth patterns. J Wunder, AM Fowler, ER Cook, M Pirie, SPJ McCloskey. Trees 27 (4), 937-948".}
\examples{ \dontrun{
#library('dplRCon')
#loading data
data(ring.raw)
data(ring.stand)
data(dbh.po.nc)
data(SOI)
data(temperature)
data(precipitation)
#Subset "near-pith" is the material within 0 -20cm from the estimated pith
spline200.sub0.20.n   <- TruncSeriesPithoffset( ring.raw, ring.stand, dbh.po.nc, c(1,200))
# Subset "far-pith" is the material further than 20cm from the estimated pith
spline200.sub20.2000.n  <- TruncSeriesPithoffset( ring.raw, ring.stand, dbh.po.nc, c(200,200000))
# Whole dataset, through truncated functions to get in the same format as the above two datasets
spline200.sub0.2000.n  <- TruncSeriesPithoffset( ring.raw, ring.stand, dbh.po.nc, c(00,200000))

#series.bootstapped
boot.0.20   <-  series.bootstrap( spline200.sub0.20.n$sub.series.stand, stat, 999, 
names.stat, aver.by.tree = FALSE)
boot.20.2000   <- series.bootstrap(spline200.sub20.2000.n$sub.series.stand, stat, 999, 
names.stat, aver.by.tree = FALSE)
boot.full   <- series.bootstrap(spline200.sub0.2000.n$sub.series.stand, stat, 999, 
names.stat, aver.by.tree = FALSE)

#calculate seasonal climate
SOI.anom.season.data  <- climate.anom.dendro.season( SOI, 1933, 1992, 1876, is.anomaly="TRUE")
temp.anom.season.data	<- climate.anom.dendro.season( temperature, 1933, 1992, 1876, 
                is.anomaly="TRUE")
prec.anom.season.data	<- climate.anom.dendro.season( precipitation, 1933, 1992, 1876, 
                is.anomaly="TRUE")

# Calculate the correlations for each of the climate variables
period.RF<-c(1900,1990)
col.names.season <- list("SON_2", "DJF_2", "MAM_2", "JJA_2", "SON_1", "DJF_1", "MAM_1","JJA_1", 
"SON", "DJF", "MAM", "JJA")

##	Full dataset
site.full <- site.chron(spline200.sub0.2000.n$sub.series.stand, aver.by.tree=FALSE)
site.chron.data <- cbind(site.full$aver.site, site.full$aver.site)
site.boot.full <- ts(boot.full$boot.series.mean, start=tsp(site.full$aver.site)[1] )
site.boot.data<-list(site.boot.full, site.boot.full) 	
corr.SOI.full<-correlation.function(SOI.anom.season.data, site.chron.data, site.boot.data, 
      period.RF,col.names.season, Climate.name="SOI", 
      Subset.name=c("0-20cm","20-200cm" ) )
corr.prec.full<-correlation.function(prec.anom.season.data, site.chron.data, site.boot.data, 
      period.RF, col.names.season, Climate.name="SOI",
      Subset.name=c("0-20cm","20-200cm" ) )
corr.temp.full<-correlation.function(temp.anom.season.data, site.chron.data, site.boot.data, 
      period.RF, col.names.season, Climate.name="SOI", 
      Subset.name=c("0-20cm","20-200cm" ) )


##	Near vs Far
site.0.20  <- site.chron(spline200.sub0.20.n$sub.series.stand, aver.by.tree=FALSE)
site.20.200 <- site.chron(spline200.sub20.2000.n$sub.series.stand, aver.by.tree=FALSE)
site.chron.data <- cbind(site.0.20$aver.site, site.20.200$aver.site)

site.boot.0.20 <- ts(boot.0.20$boot.series.mean, start=tsp(site.0.20$aver.site)[1] )
site.boot.20.200 <- ts(boot.20.2000$boot.series.mean, start=tsp(site.20.200$aver.site)[1] )
site.boot.data<-list(site.boot.0.20, site.boot.20.200) 


corr.SOI<-correlation.function(SOI.anom.season.data, site.chron.data,site.boot.data, period.RF, 
col.names.season, Climate.name="SOI", Subset.name=c("0-20cm","20-200cm" ) )
corr.prec<-correlation.function(prec.anom.season.data, site.chron.data, site.boot.data, period.RF, 
col.names.season, Climate.name="SOI",  Subset.name=c("0-20cm","20-200cm" ) )
corr.temp<-correlation.function(temp.anom.season.data, site.chron.data, site.boot.data, period.RF, 
col.names.season, Climate.name="SOI",Subset.name=c("0-20cm","20-200cm" ) )

#Plotting
Figure.correlation.barplot(corr.temp, corr.prec, corr.SOI, 
        corr.temp.full, corr.prec.full, corr.SOI.full, 
        col.names.season)
}
}


