# P5

To solve this problem, the following approach will be used:

## Using the Monte Carlo Simulation

For this problem I will utilize a **Monte Carlo Simulation**. It was given the horizontal and vertical error variances and I assumed the variables were uniformly random. By doing simple math, and using the fact that min = -max (mean = 0), I got `sqrt(6)` and `sqrt(12)` as modulus of X and Y. 

The `rnorm` function is structured as follows:

```R
runif(x, min = a, max = b)
```

## Code & answers:

### ans = 0.2784
```R
n <- 100000
X <- runif(n, min = -sqrt(6), max = sqrt(6))
Y <- runif(n, min = -sqrt(12), max = sqrt(12))
radius <- sqrt(3)
ins <- (X^2 + Y^2 <= radius^2)
P <- mean(ins)

```