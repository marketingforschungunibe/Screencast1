library(ggplot2)
install.packages("factoextra")
library(factoextra) 

set.seed(101)

iris <- data.frame(iris)

iris.ohne <- iris
iris.ohne$Species <- NULL # Hier entfernen wir die Variable Spezies

fviz_nbclust(iris.scaled, kmeans, method = "wss") +
  geom_vline(xintercept = 3, linetype = 2)

resultat <- kmeans(iris.ohne, 3) # Hier kategorisieren wir die Beobachtungen in 3 Cluster und speichern das Resultat

resultat

table(true=iris$Species, cluster=resultat$cluster)

ggplot(iris, aes(Petal.Length, Petal.Width, color = iris$Species)) + # wie genau ist die Methode
  ggtitle("K-means Method \n Kreismitte entspricht der Clusterlösung") + # Titel mit Verfahren ->anpassen
  geom_point(alpha = 0.4, size = 3.5) + geom_point(col = resultat$cluster) + 
  scale_color_manual(values = c('red', 'black', 'green'))

