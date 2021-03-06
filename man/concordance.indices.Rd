% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/concordance.indices.R
\name{concordance.indices}
\alias{concordance.indices}
\title{Concordance}
\usage{
concordance.indices(sort.boot.x, sort.boot.y, t, trim.alpha, nx, ny)
}
\arguments{
\item{sort.boot.x}{A matrix of the bootstrapped means from subset X}

\item{sort.boot.y}{A matrix of the bootstrapped means from subset Y}

\item{t}{The time index}

\item{trim.alpha}{The level of outside trimming}

\item{nx}{A vector providing the number of series at each time for subset X}

\item{ny}{A vector providing the number of series at each time for subset Y}
}
\value{
A vector containing the a, b and the concordance
}
\description{
This is an internal function called in the function "Overall Concordance". It is used to calculate the concordance indices for each time, t, using the bootstrapped means.
}
\details{
The procedure for calculating the concordance is provided in "Concordance: A measure of similarity between matrices of time series with applications in dendroclimatology".
}

