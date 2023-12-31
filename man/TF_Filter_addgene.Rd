% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TF_Filter.R
\name{TF_Filter_addgene}
\alias{TF_Filter_addgene}
\title{Generate network (an extension of TF_Filter)}
\usage{
TF_Filter_addgene(
  actMat,
  GSDB,
  genes,
  DEgenes,
  eset,
  miTh = 0.4,
  maxTf = 75,
  maxInteractions = 300,
  nbins = 16,
  miMethod = "e",
  corMethod = "spearman",
  useCor = FALSE,
  removeSignalling = FALSE,
  DPI = FALSE,
  ...
)
}
\arguments{
\item{actMat}{numeric matrix. Matrix containing the activities}

\item{GSDB}{List of list. Gene set database of interactions}

\item{genes}{vector. a vector of gene symbols of genes of interest}

\item{DEgenes}{vector. a vector of gene symbols of DE genes}

\item{eset}{expression set of gene expression data or gene expression matrix}

\item{miTh}{numeric. Mutual information threshold}

\item{maxTf}{integer (optional). Default 75. Maximum number of transcription 
factors in the network. If \code{removeSignalling} is \code{TRUE} 
the actual number will be less.}

\item{maxInteractions}{integer (optional). Default 300. Maximum number of
interactions in the network.}

\item{nbins}{integer (optional). Number of bins Default 16.}

\item{miMethod}{MI calculation method: e: entropy (default) or i: infotheo}

\item{corMethod}{character (optional). Method to compute correlation.}

\item{useCor}{Logical (optional). Whether to use correlation instead of
mutual information to find possible interactions. Default FALSE}

\item{removeSignalling}{logical (optional). Whether to remove the Tfs which
are not the target of any other Tfs. Default FALSE. It is not recursive and 
the generated network might still contain some signalling tfs.}

\item{DPI}{logical (optional). Default FALSE. 
Whether to apply the data processing
inequality to remove weak edges from triangles.}

\item{...}{two additional parameters passed from applyDPI (default: miDiff = 0, minMiTh = 0.5)}
}
\value{
List of data.frame. Contains the interactions in a data frame listing.
source tf, target tf and interaction type (1-activation, 2-inhibition).  
       tf_links: network interactions.
       new_links: new interactions associated with the genes of interest.
}
\description{
Network calculated using activity and interaction database. Uses
mutual information to find possible interactions and keeps the interactions 
if they are available in the database. Sign of interaction is assigned based
on the correlation between the activities. An extension of TF_Filter. 
Add a list of genes of interest.
}
