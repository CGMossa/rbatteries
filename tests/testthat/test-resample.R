test_that("Resample returns a single element on vectors of one length", {
  result <- resample(c(42), replace = TRUE)

  expect_equal(object = result, expected = 42)
})
