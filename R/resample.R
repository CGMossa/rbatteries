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
  x[sample.int(n = length(x), ...)]
}
