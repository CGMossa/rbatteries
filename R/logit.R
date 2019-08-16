#' Logit and inverse-logit functions
#'
#' An alias for `qlogis` as `logit`, and alias for `plogis` as `inv_logis`.
#'
#' @inherit stats::qlogis
#' @export
logit <- stats::qlogis

#' @rdname logit
#' @inherit stats::plogis
#' @export
inv_logit <- stats::plogis
