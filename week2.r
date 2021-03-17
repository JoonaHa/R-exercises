#Viikko 2

#Tehtävä 6
#a)
Numero <- c(1, 16, 28, 31, 32, 39, 45)
Nimi <- c("George Washington", "Abraham Lincoln", "Woodrow Wilson",
          "Herbert Hoover", "Franklin D. Roosevelt",
          "Jimmy Carter", "Donald Trump")
Synt <- c(1732, 1809, 1856, 1874, 1882, 1924, 1946)
Puolue <- c(3, 2, 1, 2, 1, 1, 2)
#b)
Puolue <- as.factor(Puolue)
levels(Puolue) <- c("Demokraatti", "Republikaani", "Sitoutumaton")
#c)
presidentit <- data.frame(Numero = Numero, Nimi = Nimi, Synt = Synt,
                         Puolue = Puolue, stringsAsFactors = FALSE)
str(presidentit)

#Tehtävä 7
#a)
#install.packages("MASS")
library(MASS)
print(nrow(survey))
# 237 riviä
print(ncol(survey))
#12 saraketta
#b)
print(mean(survey$Height, na.rm = TRUE))
print(median(survey$Height, na.rm = TRUE))
print(max(survey$Height, na.rm = TRUE))
#c)
print(mean(survey$Height[survey$Sex=="Female"], na.rm=TRUE))
print(mean(survey$Height[survey$Sex=="Male"], na.rm=TRUE))
#d)
print(sum(is.na(survey$Pulse[survey$Sex=="Male"])))
print(sum(is.na(survey$Pulse[survey$Sex=="Female"])))
#e)
print(sum(survey$Pulse >= 90, na.rm=TRUE))

#Tehtävä 8
#a)
plot(survey$Height, survey$Wr.Hnd, xlab="Height", ylab="Wr.Hnd", pch=17)
#Kirjoituskäden koko korreloi pituuden kanssa
#b)
hist(survey$Pulse, col="red", xlab="Pulse")
#c)
boxplot(survey$Height~survey$Sex,col=c("red","blue"))
#paksu musta viiva kuvaa pituuden mediaania 
