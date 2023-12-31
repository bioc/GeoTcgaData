% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/arrayDiff.R
\name{get_geo_array}
\alias{get_geo_array}
\title{Get Microarray matrix data from GEO}
\usage{
get_geo_array(gse)
}
\arguments{
\item{gse}{GSE number, such as GSE781.}
}
\value{
a list of matrix
}
\description{
Get Microarray matrix data from GEO
}
\examples{
\donttest{
arraylist <- get_geo_array("GSE781")
}
}
