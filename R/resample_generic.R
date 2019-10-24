#' Resample
#'
#' @param x Object to resample
#'
#'
#' @export
#'
resample <- function(x,...) {
  UseMethod("resample", x)
}

#' @export
#' @rdname resample
#' @method resample default
#' @inheritDotParams base::sample.int
#'
resample.default <- function(x, ...) {
  dots <- list(...)

  x_length <- length(x)
  dots$n <- if (is.null(dots$n)) x_length else dots$n

  if (dots$n > x_length && (is.null(dots$replace) || dots$replace == FALSE)) {
    warning("Resample (upsampling) without replacement results in NA entries")
  }

  x[sample.int(unlist(dots))]
}

#' @method resample data.frame
#' @rdname resample
#' @export
resample.data.frame <- function(x, ...) {
  x[resample.default(seq_len(nrow(x)), ...), , drop = FALSE]
}
