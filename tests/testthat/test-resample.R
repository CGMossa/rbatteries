test_that("Resample returns a single element on vectors of one length", {
  result <- resample(c(42), replace = TRUE)

  expect_equal(object = result, expected = 42)
})

test_that("Resample can handle up- and down-sampling", {
  x <- 1:5
  up_sampling <- expect_warning(resample(x, n = 10))
  expect_length(up_sampling, n = 10)

  down_sampling <- resample(x, n = 2)
  expect_length(down_sampling, n = 2)
})

test_that("Resample results in NA when upsampling without replacements.", {

  x <- 1:5
  expect_warning(resample(x, n = 10))
  expect_silent(resample(x, n = 10, replace = TRUE))
})
