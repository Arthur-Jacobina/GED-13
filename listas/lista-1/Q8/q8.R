n <- 100000
x <- rbinom(n, size = 100, prob = 0.3)
y <- x*(x+1)
E_y <- mean(y)
z <- log(y, base = exp(1))
E_z <- mean(z)
