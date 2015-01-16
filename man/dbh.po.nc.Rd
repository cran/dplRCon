\name{dbh.po.nc}
\alias{dbh.po.nc}
\docType{data}
\title{
Pith offset information
}
\description{
Includes: DBH, pithoffset estimation plus the method used in the estimation, the length of the outer non-crossdated distance and the length of the bark.  
}
\usage{data(dbh.po.nc)}
\format{
  A data frame with 135 observations on the following 6 variables.
  \describe{
    \item{\code{Series.ID}}{a factor with levels \code{HUP004A} \code{HUP004B} \code{HUP004C} \code{HUP004D} \code{HUP013A} \code{HUP013B} \code{HUP036A} \code{HUP036B} \code{HUP036C} \code{HUP036D} \code{HUP036E} \code{HUP037A} \code{HUP037B} \code{HUP037C} \code{HUP037D} \code{HUP040A} \code{HUP040B} \code{HUP040C} \code{HUP040D} \code{HUP040E} \code{HUP040F} \code{HUP050A} \code{HUP050B} \code{HUP050C} \code{HUP050D} \code{HUP052A} \code{HUP052B} \code{HUP052C} \code{HUP052D} \code{HUP055A} \code{HUP055B} \code{HUP055C} \code{HUP056A} \code{HUP056B} \code{HUP060A} \code{HUP060B} \code{HUP062A} \code{HUP062B} \code{HUP063A} \code{HUP063B} \code{HUP065A} \code{HUP065B} \code{HUP065C} \code{HUP066A} \code{HUP066B} \code{HUP066C} \code{HUP073A} \code{HUP073B} \code{HUP074A} \code{HUP074B} \code{HUP074C} \code{HUP079A} \code{HUP079B} \code{HUP079C} \code{HUP098A} \code{HUP098B} \code{HUP098C} \code{HUP100A} \code{HUP100B} \code{HUP100C} \code{HUP113A} \code{HUP113B} \code{HUP113C} \code{HUP125A} \code{HUP125B} \code{HUP125C} \code{HUP137A} \code{HUP137B} \code{HUP141A} \code{HUP141B} \code{HUP141C} \code{HUP141D} \code{HUP142A} \code{HUP142B} \code{HUP142C} \code{HUP142D} \code{HUP163A} \code{HUP163B} \code{HUP163C} \code{HUP163D} \code{HUP163E} \code{HUP189A} \code{HUP189B} \code{HUP189C} \code{HUP189D} \code{HUP197A} \code{HUP197B} \code{HUP197C} \code{HUP197D} \code{HUP197E} \code{HUP197F} \code{HUP198A} \code{HUP198B} \code{HUP198C} \code{HUP198D} \code{HUP198E} \code{HUP199A} \code{HUP199B} \code{HUP199C} \code{HUP199D} \code{HUP199E} \code{HUP199F} \code{HUP199g} \code{HUP200A} \code{HUP200B} \code{HUP200C} \code{HUP200D} \code{HUP200E} \code{HUP200F} \code{HUP201A} \code{HUP201B} \code{HUP201C} \code{HUP201D} \code{HUP202A} \code{HUP202B} \code{HUP202C} \code{HUP202D} \code{HUP202E} \code{HUP202F} \code{HUP208A} \code{HUP208B} \code{HUP208C} \code{HUP228A} \code{HUP228B} \code{HUP228C} \code{HUP228D} \code{HUP228E} \code{HUP232A} \code{HUP232B} \code{HUP232C} \code{HUP242A} \code{HUP242B} \code{HUP242C} \code{HUP242D} \code{HUP242E} \code{HUP247A} \code{HUP247B} \code{HUP247C} \code{HUP247D} \code{HUP248A} \code{HUP248B} \code{HUP248C} \code{HUP249A} \code{HUP249B} \code{HUP251A} \code{HUP251B} \code{HUP251C} \code{HUP251D} \code{HUP251E} \code{HUP251F} \code{HUP251g} \code{HUP251h} \code{HUP251I} \code{HUP257A} \code{HUP257B} \code{HUP257C} \code{HUP257D} \code{HUP259A} \code{HUP259B} \code{HUP259C} \code{HUP259D} \code{HUP279A} \code{HUP279B} \code{HUP301A} \code{HUP301B} \code{HUP301C} \code{HUP301D} \code{HUP303A} \code{HUP303B} \code{HUP303C} \code{HUP304A} \code{HUP304B} \code{HUP306A} \code{HUP306B} \code{HUP306C} \code{HUP310A} \code{HUP310B} \code{HUP310C} \code{HUP400A} \code{HUP400B}}
    \item{\code{DCH}}{a numeric vector}
    \item{\code{pithoffset}}{a numeric vector}
    \item{\code{method}}{a factor with levels \code{BE_DBH_1M} \code{BE_length_min_tree} \code{Duncan} \code{partial_arc} \code{pith} \code{RADIUS}}
    \item{\code{Outer.dis.non.crossdated}}{a numeric vector}
    \item{\code{Bark}}{a numeric vector}
  }
}
\source{
With permission from School of Environment, University of Auckland
}
\examples{
data(dbh.po.nc)
str(dbh.po.nc)
}
\keyword{datasets}
