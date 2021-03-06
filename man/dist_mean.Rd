% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{dist_mean}
\alias{dist_mean}
\title{Find mean of a probability density function}
\usage{
dist_mean(dist, l = attr(dist, "limits")[1], r = attr(dist,
  "limits")[2])
}
\arguments{
\item{dist}{A one-argument function returned from \code{\link[=update_prior]{update_prior()}}}

\item{l}{Lower bound of the density's support}

\item{r}{Upper bound of the density's support}
}
\value{
A scalar
}
\description{
Find mean of a probability density function
}
\examples{

d1 <- update_prior(10, 40, P = 5/6, prior = stats::dunif)
dist_mean(d1)

}
