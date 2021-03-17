#Viikko1

#Tehtävä 5
#a)
k <- 0:80
#b)
x <- (-1/3)^k
#c) 
y <- 2*k +1
#d)
z <- x/y
#e)
tulos <- sum(z) * sqrt(12)
#tulos on piin aproksimaatio
print(tulos)

#Tehtävä 6
#a)
A <- matrix(c (seq(2, 16, 2) , seq(1,15,2)), nrow = 4, ncol = 4, byrow = FALSE)
B <- diag(c(1, 2, 3, 4) , nrow=4)
C <- A %*% B
#b)
D <- C[c(T, T, F, T), c(F,T,T,T)]
#c)
D <- cbind(D, c(3,-2,0))
#d)
D <- rbind(D, c(-4,1,1,2))
#e)
print(solve(D))

#Tehtävä 7
#a)
X <- matrix(rnorm(300,50,15),ncol=30)
X[3,] <- NA
X[9,1:10] <- NA  
#b)
print(length((z=is.na(X))[z==T]))
#c)
print(length((z=is.na(X))[z==F]))

#Tehtävät 8
#a)
a <- seq(1, 399, 2)
#b)
b <- a[ a %% 3 == 0 & a %% 11 == 0]
#c)
print(b[4] + b[5])
