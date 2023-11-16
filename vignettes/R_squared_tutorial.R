## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)
library(ModelFit)
library(bench)

## ----function-----------------------------------------------------------------
#Generate random data as your predictor and response variables
set.seed(123)
predictor <- sample(seq(1, 100), size = 10, replace = TRUE)
response <- sample(seq(1, 100), size = 10, replace = TRUE)

#Call the function
R2 <- R_squared(predictor, response)
R2

## ----comparison---------------------------------------------------------------
model <- lm(response ~ predictor)
model_summary <- summary(model)
model_summary

## ----equality-----------------------------------------------------------------
all.equal(model_summary$r.squared, R2)

## ----efficiency---------------------------------------------------------------
benchmark <- bench::mark(model_summary$r.squared, R2)
benchmark

