# P1

To solve this problem, the following approach will be used:

## (a) - (c) Using the `pnorm` Function

For parts (a), (b), and (c), I will utilize the `pnorm` function in R. This function calculates the **Cumulative Distribution Function (CDF)** for a normally distributed random variable \( X \), given its mean (\( \mu \)) and standard deviation (\( \sigma \)).

The `pnorm` function is structured as follows:

```R
pnorm(x, mean = mu, sd = sigma)
```
## (d) using `Monte Carlo Simulation`

To compute the probability for \( W = X^2 - 50X \) where \( P(W < 5000) \), I will use a **Monte Carlo simulation**. This approach is necessary because \( W \) is a quadratic function of \( X \), making it difficult to model directly using standard probability functions. In this case I will use `rnorm` function in R. This function calculate n random (MT19937 seeded) numbers following a normal distribution. I need to mention here that the result for this item may be different then the one I got, for testing and getting the same result, set a seed using the following line:

```R
set.seed(<YOUR SEED>)
```

The `rnorm` function is structured as follows:

```R
rnorm(x, mean=mu, sd=sigma)
```

## Code & answers:

### (a) P(X > 120) ans = 0.04779
```R
m <- 100
var <- 12
Pa <- 1- pnorm(120, mean = m, sd = var) 
```

### (b) P(82 < X < 118) ans = 0.86638
```R
Pb <- pnorm(118, mean = m, sd = var) - pnorm(82, mean = m, sd = var)
```

### (c) Y = 3*X + 50 P(300 < Y < 400) ans = 0.83513
```R
mY <- 3*m + 50
varY <- 3*var
Pc <- pnorm(400, mean = mY, sd = varY) - pnorm(300, mean = mY, sd = varY)
```

### (d) W = X^2 - 50X P(W < 5000) ans = 0.50000
```R
n <- 100000
X <- rnorm(n, mean = m, sd = var)
W <- X^2 - 50 * X
Pd <- mean(W < 5000)
```