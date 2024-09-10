# P2

To solve this problem, the following approach will be used:

## Using the `pgamma` Function

For this problem, I will utilize the `pgamma` function in R. This function calculates the **Cumulative Distribution Function (CDF)** for a sum of `n` exponential random variable, given a certain rate of occurrence.

The `pgamma` function is structured as follows:

```R
pnorm(x, alpha = n, rate = lambda)
```

Although it is possible to use `pexp` for individual events, it becomes tricky when dealing with the sum of events. A for-loop combined with `pexp` could be implemented, but I judge this approach to be less efficient and not as clean as using `pgamma`. This is well-explained in [Good Code in R](https://snoweye.github.io/R_note/inc_menu/code.html).

## (c) 

For part (c) I used the fact that the expected value of the sum of `n` independent exponential random variables, each with mean `m`, is given by:

\[ \text{Expected Time} = n \times m \] 

## Code & answers:

### (a) P(X > 120) ans = 0.4037
```R
m <- 12
e <- 5

time <- 50
Pa <- pgamma(time, shape = e, rate = 1/m)
```

### (b) P(82 < X < 118) ans = 0.1321
```R
time <- 90
Pb <- 1 - pgamma(time, shape = e, rate = 1/m)
```

### (c) Y = 3*X + 50 P(300 < Y < 400) ans = 60 min
```R
t_esp = e*m
```
