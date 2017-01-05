HLA_LOCI <- function() {
  c("A", "B", "C", "DRB1", "DRB1", "DQB1", "DPB1")
}

KIR_LOCI <- function() {
  c("2DL1", "2DL2", "2DL3", "2DL3", "2DL4", "2DL5", "2DS1", "2DS2", "2DS3",
    "2DS4", "2DS5", "2DP1", "3DL1", "3DL2", "3DL3", "3DS1", "3DP1")
}

normalise_locus <- function(locus) {
  locus <- sub("^(HLA[-_]?|KIR[-_]?)", "", toupper(locus))
  if (locus %in% HLA_LOCI()) {
    paste0("HLA_", locus)
  } else if (locus %in% KIR_LOCI()) {
    paste0("KIR_", locus)
  } else {
    stop("Unknown locus ", sQuote(locus), call. = FALSE)
  }
}

#' Load and assign a data object from \pkg{IPDdata}.
#'
#' @param locus A valid HLA or KIR locus.
#' @return A \code{\link[hlatools]{HLAGene}} object
#'
#' @export
#' @examples
#' x <- loadIPDdata("A")
loadIPDdata <- function(locus) {
  locus <- normalise_locus(locus)
  avail <- readLines(system.file("data", "datalist", package = "IPDdata"))
  if (!locus %in% avail) {
    stop("Data for locus ", sQuote(locus), " not available", call. = FALSE)
  }
  data(list = locus, package = "IPDdata", envir = environment())
  eval(as.name(locus))
}

