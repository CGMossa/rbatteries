

quartiles <-  function(x)
  quantile(x, probs = c(0, 0.25, 0.5, 0.75, 1))
deciles <-  function(x)
  quantile(x, probs = seq(0, 1, by = 0.1))
percentiles <-  function(x)
  quantile(x, probs = seq(0, 1, by = 0.01))
