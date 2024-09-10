# P6

To solve this problem, the following approach will be used:

## (a) Using the `pnorm` Function

For this problem I will utilize a `pnorm` function. For a random sample with 32 values within the population, the variance is just the population variance divided by the size of the sample and the mean remains the same, thus I'm able to use `pnorm` and get the answer easily. 

The `pnorm` function is structured as follows:

```R
pnorm(x, mean = a, sd = b)
```

## (a) Using the `pchisq` Function

The `pchisq` function is structured as follows:

```R
pchisq(x, df = df)
```

## Code & answers:

### (a) ans = 0.2784
```R
m = 100
n = 32
var = 20/32
sigma = sqrt(var)
Pa <- pnorm(103, mean = m, sd = sigma) - pnorm(97, mean = m, sd = sigma)
```

### (b) 
```R
df <- n-1
a <- 3.5
b <- 4.5
chi_lower <- df * (a^2) / 20
chi_upper <- df * (b^2) / 20
Pb <- pchisq(chi_upper, df = df) - pchisq(chi_lower, df = df)
```