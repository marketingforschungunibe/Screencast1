# Anova Beispiel

# Daten vorbereiten
Chruterkraft        <- c(6,7,7,8)
WerHatsErfunden     <- c(10,11,11,12)
Kontrollgruppe      <- c(11,12,12,13)

Daten <- data.frame(cbind(Chruterkraft,WerHatsErfunden,Kontrollgruppe))
GestapeltDaten <- stack(Daten)

# Anova berechnen
ANOVA_Resultat <- aov(values ~ ind, data=GestapeltDaten)
summary(ANOVA_Resultat)
# post-hoc Vergleiche
TukeyHSD(ANOVA_Resultat)
