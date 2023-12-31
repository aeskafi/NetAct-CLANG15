% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Utilities.R
\name{filterDB}
\alias{filterDB}
\title{Filtered gene set database based on minimum sizes}
\usage{
filterDB(GSDB, geneList, minSize = 5)
}
\arguments{
\item{GSDB}{list of list. gene set database}

\item{geneList}{a vector of available genes}

\item{minSize}{minimum number of genes of a gene set (default: 5)}
}
\value{
DB: list of list. filtered gene set database
}
\description{
Filtered gene set database based on minimum sizes
}
