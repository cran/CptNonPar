% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CptNonPar-package.R
\docType{package}
\name{CptNonPar-package}
\alias{CptNonPar}
\alias{CptNonPar-package}
\title{CptNonPar: Nonparametric Change Point Detection for Multivariate Time Series}
\description{
Implements the nonparametric moving sum procedure for detecting changes in the joint characteristic function (NP-MOJO) for multiple change point detection in multivariate time series. See McGonigle, E. T., Cho, H. (2025) \doi{10.1093/biomet/asaf024} for description of the NP-MOJO methodology.
}
\examples{
set.seed(1)
n <- 500
noise <- c(rep(1, 300), rep(0.4, 200)) * stats::arima.sim(model = list(ar = 0.3), n = n)
signal <- c(rep(0, 100), rep(2, 400))
x <- signal + noise
x.c <- np.mojo.multilag(x, G = 83, lags = c(0, 1))
x.c$cpts
x.c$cpt.clusters
}
\seealso{
\link{np.mojo}, \link{np.mojo.multilag}, \link{multilag.cpts.merge}
}
\author{
\strong{Maintainer}: Euan T. McGonigle \email{e.t.mcgonigle@soton.ac.uk}

Authors:
\itemize{
  \item Haeran Cho \email{haeran.cho@bristol.ac.uk}
}

}
\keyword{internal}
