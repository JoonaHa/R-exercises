#Viikko 4

#Tehtava 6
#a)
mean1 <- 100
vari <- 225
pnorm(q = 75, mean = mean1, sd = sqrt(vari))
1 - pnorm(q = 130, mean = mean1, sd = sqrt(vari))
pnorm(q = 110, mean = mean1, sd = sqrt(vari))
  - pnorm(q = 90, mean = mean1, sd = sqrt(vari))
#b)
dbinom(x = 15, size = 20, prob = 0.74) + dbinom(x = 15, size = 20, prob = 0.74)
#c)
q <- qnorm(p = 0.93, mean = 70, sd = 14)
q
#d)
s <- rnorm(n = 10e3, mean = 70, sd = 14)
sum(s <= q, na.rm = T) / length(s) * 100

#Tehtava 7
#a)
# 10 000 näytettä
n <- 10e3
#bussimatka , vuoro ja asioinit ja paluubussin odottelu
matka <- rnorm(n = n, mean = 25, sd = 3)
vuoro <- rexp(n = n, rate = (1 / 5))
asiointi <- rnorm(n = n, mean = 10, sd = 2)
paluu <- runif(n = n, min = 0, max = 10)

kokonaisaika <- matka + vuoro + asiointi + paluu
hist(kokonaisaika)

alle.tunti <- sum(kokonaisaika < 60, na.rm = T)
tod <- alle.tunti / length(kokonaisaika)
tod
#Liisan todennakoisyys selvitä reissusta yhdellä lipulla on useimmiten yli 96% 

#Tehtävä 8
#a)
x <- 0:64
fx <- dbinom(x, 64, 0.5)
#b)
plot(x, fx, type = "h")
#c) 
y <- seq(0, 64, 0.001)
fy <- dnorm(y, 32, 4)
#d)
lines(y, fy, col = "red")
# Y:n tiheysfunktio on hyvä aproksimaation X:lle. Ainakin 0.01 tarkkuudella
