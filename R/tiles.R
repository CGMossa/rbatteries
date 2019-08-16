#' Tiles
#' `quartiles` returns the quartiles, `deciles` return the deciles, and `percentiles` returns the percentiles with a resolution of `0.01`.
#'
#'
#' @inheritParams stats::quantile
#' @return Returns the quartiles of `x`
#'
#' @export
#'
#' @examples
#' x <- rnorm(10)
#' quartiles(x)
quartiles <-  function(x) {
  stats::quantile(x, probs = c(0, 0.25, 0.5, 0.75, 1))
}

#' @describeIn quartiles The deciles of `x`
#' @export
#' @examples
#' deciles(x)
deciles <-  function(x)
  stats::quantile(x, probs = seq(0, 1, by = 0.1))

#' @describeIn quartiles The percentiles of `x`
#' @export
#' @examples
#' percentiles(x)
percentiles <-  function(x)
