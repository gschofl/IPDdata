% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.r
\docType{data}
\name{HLA_DPB1}
\alias{HLA_DPB1}
\title{HLA-DPB1}
\format{An object of class \code{\link[hlatools]{HLAGene}}.}
\source{
\href{https://www.ebi.ac.uk/ipd/}{IPD-IMGT/HLA}
}
\usage{
data(HLA_DPB1)
}
\description{
HLA-DPB1 data from IPD-IMGT/HLA v. 3.25.0.
}
\examples{
data(HLA_DPB1)
HLA_DPB1$get_locusname()
HLA_DPB1$get_db_version()
HLA_DPB1$get_reference_sequence("01:01:01")
HLA_DPB1$get_alleles("01:01:01")
}
\keyword{datasets}

