% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/Prelim.R
\name{function.id}
\alias{function.id}
\title{Core IDs}
\usage{
function.id(cores, site.id, tree.id, core.id)
}
\arguments{
\item{cores}{A vector containing core Ids.}

\item{site.id}{A vector specifying the position of start and end for the site ID.}

\item{tree.id}{A vector specifying the position of start and end for the tree ID.}

\item{core.id}{A vector specifying the position of start and end for the core ID.}
}
\value{
A vector of core ids, re-formatted.
}
\description{
Take the series ID's and convert into a useable format. This produces series ID in a form that can be compared to pith offset file.
}

