#' Re-sample
#' A function to guard against problems with sample():
#' @param x Vector to resample.
#'
#' @return Returns x with resampled entries
#' @export
#'
#' @inheritDotParams base::sample.int
#'
#' @examples
#' x <- 42:100
#' resample(x)
#'
resample <- function(x, ...) {
  dots <- list(...)

  dots$n <- if (is.null(dots$n)) { length(x) } else { dots$n }

  x[do.call(sample.int, dots)]
}
