#Viikko5

#Tehtava 6
#a)
hki <- read.table(file = "hki.txt")
#b)
kevat <- hki[, 4:6]
kesa <- hki[, 7:9]
#c)
kevatmax <- apply(kevat, 1, max)
kesamax <- apply(kesa, 1, max)
#d)
plot(x = kevatmax, y = kesamax)
text(x = kevatmax, y = kesamax, labels = hki[, 1])

cor(x = kevatmax, y = kesamax)
#Hajontakuvan ja korrealaatiokertoimen perusteella lampotiloilla
#on aivan pienimutoinen positiivinem lineaarinen riippuvuus.

#Tehtava 7
#a)
cummean <- function(n) {
    c <- numeric(length(n))
    for (i in 1 :length(n)) {
        c[i] <- sum(n[1:i]) / i
    }

    return(c)
}
#b)
havainnot <- rnorm(n = 5e3, mean = 20, sd = 3)
kka <- cummean(havainnot)
#c)
plot(x = 1:5e3, y = kka, type = "l")
abline(h = 20)
#Keskiarvo lähestyy aineiston simuloinnissa annettua arvoa ainesiston kasvaessa

#Tehtävä 8
library(MASS)
#a)
table(survey$W.Hnd)
table(survey$Clap)

prop.table(table(survey$W.Hnd))
prop.table(table(survey$Clap))
#b)
barplot(prop.table(table(survey$W.Hnd)))
barplot(prop.table(table(survey$Clap)))
#c)s
table(survey$W.Hnd, survey$Clap)
prop.table(table(survey$W.Hnd, survey$Clap))
#Kirjoituskasi vaikuttaa kumpi kasi on taputuksessa paallimmaisena
#Vasenkatisista melkein kaksinkertainen maara taputtaa vasen paallimmaisena
#ja samaa ilmenee myos oikeakatisten parissa
