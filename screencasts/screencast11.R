# Daten eingeben
Alkohol <- data.frame(cbind(Promille=c( 0.0,0.3,0.5,0.7,1.0,1.2,1.4,1.8,2.3,2.5),Reaktionszeit=c(590,581,687,658,632,645,687,624,702,789)))

summary(Alkohol)

cov(Alkohol$Reaktionszeit, Alkohol$Promille) # Kovarianz berechnen
var(Alkohol$Promille)                        # Varianz berechnen

b=cov(Alkohol$Reaktionszeit, Alkohol$Promille)/+ # b berechnen und 
  var(Alkohol$Promille)                          # abspeichern 
b 

Regressionsmodell <-lm(Reaktionszeit ~ Promille, data=Alkohol) # Regressionsmodell definieren
summary(Regressionsmodell)


install.packages("ggplot2")

library(ggplot2)


ggplot(Alkohol, aes(x=Promille, y=Reaktionszeit)) +
  ggtitle("Reaktionszeit = 596.50 + 53.84 * Promille") +
  geom_point(shape=1) +
  geom_smooth(method=lm) +
  theme_bw() +
  scale_x_continuous(breaks=c(0.0, 0.5, 0.8, 1.0, 1.5, 2.0)) +
  scale_y_continuous(breaks=c(596.50,639.57, 700, 800))



