#' Tiles
#' `quartiles` returns the quartiles, `deciles` return the deciles, and `percentiles` returns the percentiles with a resolution of `0.01`.
#'
#'
#' @inheritParams stats::quantile
#' @return Returns the quartiles of `x`
#'
#' @export
#'
quartiles <-  function(x) {
  quantile(x, probs = c(0, 0.25, 0.5, 0.75, 1))
}

#' @describeIn quartiles The deciles of `x`
#' @export
deciles <-  function(x)
  quantile(x, probs = seq(0, 1, by = 0.1))

#' @describeIn quartiles The percentiles of `x`
#' @export
percentiles <-  function(x)
  quantile(x, probs = seq(0, 1, by = 0.01))
