osa_67 <- airquality[airquality$Month == 6 || 7]
mean(osa_67$Wind[airquality$Temp > 80],  na.rm=T)
osa_5 <- airquality$Temp[airquality$Month == 5]
t.test(osa_5,mu=64,alternative="greater")