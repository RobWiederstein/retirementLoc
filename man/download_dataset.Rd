% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{download_dataset}
\alias{download_dataset}
\title{Download dataset to external data directory}
\usage{
download_dataset(url)
}
\arguments{
\item{url}{a character string (or longer vector e.g., for the "libcurl"
method) naming the URL of a resource to be downloaded.}
}
\description{
The `download_dataset` function downloads a data set to the `inst/extdata`
directory and names it using the `basename` function.
}
