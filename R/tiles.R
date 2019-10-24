#' *Tiles
#'
#' `quartiles` returns the quartiles, `deciles` return the deciles, and `percentiles` returns the percentiles with a resolution of `0.01`.
#'
#' @return Returns the quartiles of `x`.
#' @inheritParams stats::quantile
#'
#' @export
#'
#' @family stats::quantile
#'
#' @seealso
#' * [stats::quantile()]
#'
#' @examples
#' x <- rnorm(10)
#' quartiles(x)
quartiles <-  function(x, na.rm = FALSE, names = TRUE, type = 7, ...) {
  stats::quantile(x, probs = c(0, 0.25, 0.5, 0.75, 1),
                  na.rm = na.rm, names = names, type = type,...)
}

#' @describeIn quartiles Returns the deciles of `x`.
#' @export
#' @examples
#' deciles(x)
deciles <-  function(x, na.rm = FALSE, names = TRUE, type = 7, ...)
  stats::quantile(x, probs = seq(0, 1, by = 0.1),
                  na.rm = na.rm, names = names, type = type,...)

#' @describeIn quartiles Returns the percentiles of `x`.
#' @export
#' @examples
#' percentiles(x)
percentiles <-  function(x, na.rm = FALSE, names = TRUE, type = 7, ...)
  stats::quantile(x, probs = seq(0, 1, by = 0.01),
                  na.rm = na.rm, names = names, type = type,...)
