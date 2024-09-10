m <- 50
var <- 3

P = 1 - pnorm(50.1397, mean=m, sd = var)

n <- 100000
R = rnorm(n, mean=m, sd = var)
cond = (4/3)*3.1415926535*R^3 > 528000
P1 = mean(cond)
