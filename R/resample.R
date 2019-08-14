#' #' Re-sample
#' #' A function to guard against problems with sample():
#' #' @param x Vector to resample.
#' #'
#' #' @return Returns x with resampled entries
#' #' @export
#' #'
#' #' @inheritDotParams base::sample.int
#' #'
#' #' @examples
#' #' x <- 42:100
#' #' resample(x)
#' #'
#' resample <- function(x, ...) {
#'   dots <- list(...)
#'
#'   x_length <- length(x)
#'   dots$n <- if (is.null(dots$n)) { x_length } else { dots$n }
#'
#'   if (dots$n >= x_length && (is.null(dots$replace) || dots$replace == FALSE)) {
#'     warning("Resample (upsampling) without replacement results in NA entries")
#'   }
#'
#'   x[do.call(sample.int, dots)]
#' }
