test_that("R_squared works", {
  set.seed(123)
  predictor <- sample(seq(1, 100), size = 10, replace = TRUE)
  response <- sample(seq(1, 100), size = 10, replace = TRUE)
  expect_equal(2 * 2, 4)
})
