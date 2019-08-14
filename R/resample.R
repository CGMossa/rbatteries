# A function to guard against problems with sample():
resample <- function(x, ...) {
  x[sample.int(n = length(x), ...),]
}
