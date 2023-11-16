test_that("R_squared works", {
  set.seed(123)
  predictor <- sample(seq(1, 100), size = 10, replace = TRUE)
  response <- sample(seq(1, 100), size = 10, replace = TRUE)
  R2 <- R_squared(predictor, response)
  model <- lm(response ~ predictor)
  summary_R2 <- summary(model)$r.squared
  expect_equal(R2, summary_R2)
})
