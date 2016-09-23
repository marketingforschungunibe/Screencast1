Luft <-data.frame(airquality)

hist(Luft$Ozone)
hist(Luft$Wind)
plot(Ozone ~ Wind, data = Luft)

regression_Luft  <-  lm(Ozone ~ Wind, data = Luft)
 
summary(regression_Luft)

