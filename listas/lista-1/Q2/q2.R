m <- 12
e <- 5

time <- 50
Pa <- pgamma(time, shape = e, rate = 1/m)

time <- 90
Pb <- 1 - pgamma(time, shape = e, rate = 1/m)

t_esp = e*m
