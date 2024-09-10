n <- 100000
X <- runif(n, min = -sqrt(6), max = sqrt(6))
Y <- runif(n, min = -sqrt(12), max = sqrt(12))
radius <- sqrt(3)
ins <- (X^2 + Y^2 <= radius^2)
P <- mean(ins)
