% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Merge_methylation.R
\name{Merge_methy_tcga}
\alias{Merge_methy_tcga}
\title{Merge methylation data downloaded from TCGA}
\usage{
Merge_methy_tcga(dirr = NULL)
}
\arguments{
\item{dirr}{a string for the directory of methylation data download from tcga
useing the tools gdc}
}
\value{
a matrix, a combined methylation expression spectrum matrix
}
\description{
When the methylation data is downloaded from TCGA, 
each sample is saved in a folder, which contains the methylation value file 
and the descriptive file. This function can directly 
extract and consolidate all folders.
}
\examples{
merge_result <- Merge_methy_tcga(system.file(file.path("extdata", "methy"),
    package = "GeoTcgaData"))
}
