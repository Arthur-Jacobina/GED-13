a <- 2
b <- 10
x <- 5.1789 
Pa = 1 - punif(x, min = a, max = b)

n <- 100000
X <- runif(n, min = a, max = b)
Y <- rnorm(n, mean = 10, sd = 2)
cond <- (X^3 + log(abs(Y))) > 130
Pb <- mean(cond)

Z <- rpois(n, 5)
cond <- (X + Y + Z) > 15
Pc <- mean(cond)

mean_X <- 6
mean_Y <- 10
mean_Z <- 5
var_X <- (10 - 2)^2 / 12
var_Y <- 4
var_Z <- 5
radius <- sqrt(var_X^2 + var_Y^2 + var_Z^2)
distances <- sqrt((X - mean_X)^2 + (Y - mean_Y)^2 + (Z - mean_Z)^2)
Pd <- mean(distances <= radius)

W <- 3*X
V <- rowSums(matrix(sample(X, 3 * n, replace = TRUE), ncol = 3))
Pe <- mean(abs(W - V) < 5)

S <- W - V
mS <- mean(S)
vS <- var(S)
