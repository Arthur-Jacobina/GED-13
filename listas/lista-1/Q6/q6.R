m = 100
n = 32
var = 20/32
sigma = sqrt(var)
Pa <- pnorm(103, mean = m, sd = sigma) - pnorm(97, mean = m, sd = sigma)

df <- n-1
a <- 3.5
b <- 4.5
chi_lower <- df * (a^2) / 20
chi_upper <- df * (b^2) / 20
Pb <- pchisq(chi_upper, df = df) - pchisq(chi_lower, df = df)
