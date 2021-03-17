#Viikko 6

#Tehtava 6
#a) 
sat <- c(542, 490, 582, 511, 515, 564, 500, 602, 488,
    512, 518, 522, 505, 569, 575, 515, 520, 528, 533, 515)
t.test(sat, conf.level = 0.9)
#b)
t.test(sat, mu = 542, alternative = "less")

#c)
binom.test(x = 70, n = 200, p = 0.45, alternative = "less")


#Tehtava 7
z_testi <- function(x, sigma, mu_0) {
   valitulos <- sqrt(length(x)) * (mean(x) - mu_0)
   z <- (valitulos / sigma)

   p <- 2 * (1  - pnorm(abs(z)))

   return(list(Testisuure = z, p_arvo = p))
}
z_testi(x=c(90,100,110,120,80,90,110,105,95),sigma=5,mu_0=105)

#Tehtava 8
valit <- replicate(n = 100, t.test(rnorm(50, mean = 0, sd = 3))$conf.int)

plot(NULL, xlim = c(-2, 2), ylim = c(1, 100), yaxt = "n", xlab = "", ylab = "")
segments(valit[1, ], 1:100, valit[2, ], 1:100,
col = ifelse(valit[1, ]  * valit[2, ] <= 0, "black", "red"))
abline(v = 0)
# ylivoimaisesti suurin osa sisaltaa odotusarvon 0 eli noi 95%

valit <- replicate(n = 100, t.test(rnorm(500, mean = 0, sd = 3))$conf.int)

plot(NULL, xlim = c(-2, 2), ylim = c(1, 100), yaxt = "n", xlab = "", ylab = "")
segments(valit[1, ], 1:100, valit[2, ], 1:100,
col = ifelse(valit[1, ]  * valit[2, ] <= 0, "black", "red"))
abline(v = 0)
#Valit kapenevat n-arvon kasvaessa.