# P4

To solve this problem, the following approach will be used:

## Using the `pnorm` Function

For part (a), I will utilize the `pnorm` function in R. This function calculates the **Cumulative Distribution Function (CDF)** for a normal distributed random variable \( X \), given its mean and standard deviation. The first argument x can be calculated by solving a simple equation that relates the radius and the volume of a sphere.

The `pnorm` function is structured as follows:

```R
pnorm(x, min = mu, max = sigma)
```
## Using `Monte Carlo Simulation`

To double check the probability I will use a **Monte Carlo Simulation**

```R
rnorm(x, mean=mu, sd=sigma)
```

## Code & answers:

### ans = 0.4818
**pnorm**
```R
m <- 50
var <- 3
P = 1 - pnorm(50.1397, mean=m, sd = var)
```
**Monte Carlo**
```R
n <- 100000
R = rnorm(n, mean=m, sd = var)
cond = (4/3)*3.1415926535*R^3 > 528000
P1 = mean(cond)
```