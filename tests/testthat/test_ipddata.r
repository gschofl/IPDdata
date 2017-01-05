library(IPDdata)

testthat::context("Test locus validator")

testthat::test_that("HLA loci normalise correctly", {
  expect_equal(IPDdata:::normalise_locus("A"), "HLA_A")
  expect_equal(IPDdata:::normalise_locus("a"), "HLA_A")
  expect_equal(IPDdata:::normalise_locus("HLA-A"), "HLA_A")
  expect_equal(IPDdata:::normalise_locus("hla-a"), "HLA_A")
  expect_equal(IPDdata:::normalise_locus("HLA_A"), "HLA_A")
  expect_equal(IPDdata:::normalise_locus("hla_a"), "HLA_A")
  expect_equal(IPDdata:::normalise_locus("HLAA"), "HLA_A")
  expect_equal(IPDdata:::normalise_locus("hlaa"), "HLA_A")
  expect_error(IPDdata:::normalise_locus("hlax"), "Unknown locus ‘X’")
})

testthat::test_that("KIR loci normalise correctly", {
  expect_equal(IPDdata:::normalise_locus("2DL1"), "KIR_2DL1")
  expect_equal(IPDdata:::normalise_locus("2dl1"), "KIR_2DL1")
  expect_equal(IPDdata:::normalise_locus("KIR2DL1"), "KIR_2DL1")
  expect_equal(IPDdata:::normalise_locus("KIR-2DL1"), "KIR_2DL1")
  expect_equal(IPDdata:::normalise_locus("KIR_2DL1"), "KIR_2DL1")
  expect_error(IPDdata:::normalise_locus("KIRX"), "Unknown locus ‘X’")
})

testthat::context("Test loading data")

testthat::test_that("HLA-DPB1 loads correctly", {
  expect_equal(class(x <- IPDdata::loadIPDdata("DPB1")), c("HLAGene", "R6"))
  expect_equal(x$get_db_version(), "3.25.0")
  expect_equal(x$get_locusname(), "HLA-DPB1")
})

testthat::test_that("An error is thrown if the locus is not known", {
  expect_error(IPDdata::loadIPDdata("XXX"))
  expect_error(IPDdata::loadIPDdata("KIR2DL1"))
})
