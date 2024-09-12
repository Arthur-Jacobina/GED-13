n <- 1000000

# Here I could've used the values I found in (b) for the mean and var, but I like this way (:
h_caixas <- rowSums(matrix(rnorm(n * 6, mean = 200, sd = sqrt(81)), ncol = 6))

revs <- runif(n, min = 6, max = 12)

h <- h_caixas + revs

H <- rnorm(n, mean = 1240, sd = sqrt(64))

P <- mean(h > H)
