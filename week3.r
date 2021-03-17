# Viikko3

#Tehtava 5
mysteerifunktio <- function(n) {
  tulos <- 1 #alustetaan muutuja "tulos" arvolla 1
  for (i in 1:n) {
    tulos <- tulos * i #kerrotaan tulos muutujalla i n-kertaa kun i= 1...n
    }
  return(tulos)  #funktio palauttaa muutuja tulos eli for-silmukan kertolaskun
}  # eli mysteerifunktio(n)= 1*2*3...*n


#Tehtava 6
piiSum <- function(n) {
  k <- 0:n
  x <- (- 1 / 3 ) ^ k
  y <- 2 * k  + 1
  z <- x / y
  tulos <- sum(z) * sqrt(12)
  return(tulos)
}
piiSum(1)
piiSum(5)
piiSum(100)

#Tehtävä 7
tulo <- function(n) {
  tulos <- 1
  for (i in 1:length(n)) {
     tulos <- tulos * n[i]
  }
  return(tulos)
}
 values <- c(5,46,9,8,5,4,3,12,7,8,9,2,4)

tulo(values) 
prod(values)

#Tehtävä 8
A <- matrix(121:180, nrow=6)
#a)
rivisumma <- numeric(nrow(A))
for (i in 1:nrow(A)) {
   rivisumma[i] <- sum(A[i,])
}
rivisumma
#b)
rivisumma <- c(1:6)
sapply(rivisumma, function(i) sum(A[i, ]))
#c)
apply(A, 1, sum)
#d)
rowSums(A)