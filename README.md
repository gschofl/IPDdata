
<!-- README.md is generated from README.Rmd. Please edit that file -->
IPDdata
=======

An R data package that provides a snapshot of the IPD-IMGT/HLA and IPD-KIR database for use with `DR2S`.

Data are provided as `HLAGene` object as defined in the package `HLAtools`.

Git tags refer to the IPD-IMGT/HLA release that is encapsulated in the `HLAGene` objects.

Usage
-----

`IPDdata` provides one function `loadIPDdata(locus)`:

``` r
library(IPDdata)
x <- loadIPDdata("DPB1")
x
#> IMGT/HLA database <3.25.0>; Locus <HLA-DPB1>
#> An object of class 'HLAAllele'
#> DataFrame with 671 rows and 6 columns
#>           allele_name   allele_id date_assigned      cwd_status    SeqLen
#>           <character> <character>   <character>     <character> <integer>
#> 1   HLA-DPB1*01:01:01    HLA00514    1989-08-01          Common       777
#> 2   HLA-DPB1*01:01:02    HLA00515    1993-06-24          Common       777
#> 3   HLA-DPB1*01:01:03    HLA02006    2004-09-27 Not CWD defined       264
#> 4   HLA-DPB1*01:01:04    HLA11386    2014-03-31 Not CWD defined       264
#> 5   HLA-DPB1*01:01:05    HLA11704    2014-04-30 Not CWD defined       264
#> ...               ...         ...           ...             ...       ...
#> 667   HLA-DPB1*568:01    HLA15110    2016-05-27 Not CWD defined       264
#> 668   HLA-DPB1*569:01    HLA14999    2016-05-27 Not CWD defined       264
#> 669  HLA-DPB1*570:01N    HLA15146    2016-05-27 Not CWD defined       264
#> 670   HLA-DPB1*571:01    HLA15391    2016-06-30 Not CWD defined       657
#> 671   HLA-DPB1*572:01    HLA15165    2016-06-30 Not CWD defined       546
#>                  FeatureType
#>                  <character>
#> 1   Exon:Exon:Exon:Exon:Exon
#> 2   Exon:Exon:Exon:Exon:Exon
#> 3                       Exon
#> 4                       Exon
#> 5                       Exon
#> ...                      ...
#> 667                     Exon
#> 668                     Exon
#> 669                     Exon
#> 670           Exon:Exon:Exon
#> 671                Exon:Exon
```
