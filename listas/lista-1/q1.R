m <- 100
var <- 12
Pa <- 1- pnorm(120, mean = m, sd = var) 

Pb <- pnorm(118, mean = m, sd = var) - pnorm(82, mean = m, sd = var)

mY <- 3*m + 50
varY <- 3*var
Pc <- pnorm(400, mean = mY, sd = varY) - pnorm(300, mean = mY, sd = varY)

n <- 100000
X <- rnorm(n, mean = m, sd = var)
W <- X^2 - 50 * X
Pd <- mean(W < 5000)