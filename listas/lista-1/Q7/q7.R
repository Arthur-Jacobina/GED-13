n <- 100000
x <- runif(n, min=0, max = 10)
E_x <- mean(x)
Var_x <- var(x)

x1 = runif(n, min=0, max = 10)
x2 <- runif(n, min=0, max = 10)
x3 <- runif(n, min=0, max = 10)
w <- x1 + x2 + x3
P <- mean(w >= 25)
