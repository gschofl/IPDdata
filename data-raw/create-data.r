library(hlatools)

## A
HLA_A <- hlatools::HLAGene("A", with_dist = TRUE)
devtools::use_data(HLA_A, overwrite = TRUE, compress = "bzip2")

## B
HLA_B <- hlatools::HLAGene("B", with_dist = TRUE)
devtools::use_data(HLA_B, overwrite = TRUE, compress = "bzip2")

## C
HLA_C <- hlatools::HLAGene("C", with_dist = TRUE)
devtools::use_data(HLA_C, overwrite = TRUE, compress = "bzip2")

## DPB1
HLA_DPB1 <- hlatools::HLAGene("DPB1", with_dist = TRUE)
devtools::use_data(HLA_DPB1, overwrite = TRUE, compress = "bzip2")

## DQB1
HLA_DQB1 <- hlatools::HLAGene("DQB1", with_dist = TRUE)
devtools::use_data(HLA_DQB1, overwrite = TRUE, compress = "bzip2")

## DRB1
HLA_DRB1 <- hlatools::HLAGene("DRB1", with_dist = TRUE)
devtools::use_data(HLA_DRB1, overwrite = TRUE, compress = "bzip2")
