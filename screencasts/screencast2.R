
# Daten laden -------------------------------------------------------------


Luft <-data.frame(airquality)


# Grafiken -----------------------------------------------------------------


hist(Luft$Ozone)
hist(Luft$Wind)
plot(Ozone ~ Wind, data = Luft)

# Regression --------------------------------------------------------------


regression_Luft  <-  lm(Ozone ~ Wind, data = Luft)

summary(regression_Luft)