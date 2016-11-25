# ANOVA mit Messwiederholung

# Daten Laden
exer <- read.csv("http://www.ats.ucla.edu/stat/data/exer.csv")
# mal reinschaun
str(exer)
#  konvertieren der Variablen in Faktoren
exer$diet <- as.factor(exer$diet)
exer$exertype <- as.factor(exer$exertype)
exer$time <- as.factor(exer$time)

# Grafik Zeit/Ernährung
with(exer, interaction.plot(time, diet, pulse,
                            ylim = c(90, 110), lty = c(1, 12), lwd = 3,
                            ylab = "Mittelwert Puls", xlab = "Zeitpunkt", trace.label = "Ernährung"))

# Repeated Measures ANOVA - Zeit/Ernährung
diet.aov <- aov(pulse ~ diet * time + Error(id), data = exer)
summary(diet.aov)


# Grafik Zeit/Aktivität
with(exer, interaction.plot(time, exertype, pulse,
                            ylim = c(80, 130), lty = c(1, 2, 4), lwd = 2,
                            ylab = "Mittelwert Puls", xlab = "Zeitpunkt", trace.label = "Aktivität"))

# Repeated Measures ANOVA - Zeit/Aktivität
exertype.aov <- aov(pulse ~ exertype * time + Error(id), data = exer)
summary(exertype.aov)



