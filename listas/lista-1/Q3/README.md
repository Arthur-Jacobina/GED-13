# P3

To solve this problem, the following approach will be used:

## (a) Using the `punif` Function

For part (a), I will utilize the `punif` function in R. This function calculates the **Cumulative Distribution Function (CDF)** for a uniformly distributed random variable \( X \), given its min and max values.

The `punif` function is structured as follows:

```R
punif(x, min = mu, max = sigma)
```
## (b) - (f) using `Monte Carlo Simulation`

To compute the probability for parts (b) - (f) I will use a **Monte Carlo Simulation**

The `runif`, `rnorm`, `rpois` function is structured as follows:

```R
runif(x, min = a, max = b)
rnorm(x, mean=mu, sd=sigma)
rpois(x, lambda = l)
```

## Code & answers:

### (a) ans = 0.6026
```R
a <- 2
b <- 10
x <- 5.1789 
Pa = 1 - punif(x, min = a, max = b)
```

### (b) ans = 0.6198
```R
n <- 100000
X <- runif(n, min = a, max = b)
Y <- rnorm(n, mean = 10, sd = 2)
cond <- (X^3 + log(abs(Y))) > 130
Pb <- mean(cond)
```

### (c) ans = 0.9463
```R
Z <- rpois(n, 5)
cond <- (X + Y + Z) > 15
Pc <- mean(cond)
```

### (d) ans = 0.9978
```R
mean_X <- 6
mean_Y <- 10
mean_Z <- 5
var_X <- (10 - 2)^2 / 12
var_Y <- 4
var_Z <- 5
radius <- sqrt(var_X^2 + var_Y^2 + var_Z^2)
distances <- sqrt((X - mean_X)^2 + (Y - mean_Y)^2 + (Z - mean_Z)^2)
Pd <- mean(distances <= radius)
```

### (e) ans = 0.4129
```R
W <- 3*X
V <- rowSums(matrix(sample(X, 3 * n, replace = TRUE), ncol = 3))
Pe <- mean(abs(W - V) < 5)
```

### (f) ans: mean = 0 (ok), var = 63.966 (ok, 64 is the exact ans)  
```R
S <- W - V
mS <- mean(S)
vS <- var(S)
```