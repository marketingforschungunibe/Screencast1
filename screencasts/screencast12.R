library(ggplot2)
install.packages("factoextra")
library(factoextra) 


set.seed(101)
sampleiris = iris[sample(1:150, 150),] #iris Sample nehmen
sampleiris <- sampleiris[order(sampleiris$Species),] 

y <- as.matrix(sampleiris[,1:4])   
rownames(y) <- sampleiris$Species
distance <- dist(y) 
clusters <- hclust(distance,method="ward.D") #methode definieren single/complete/average

plot(clusters); rect.hclust(clusters, k=3, border="red") #Dendogram

fviz_nbclust(sampleiris, hcut, method = "wss") + #Ellenbogen Diagramm
  geom_vline(xintercept = 3, linetype = 2)


# wie genau ist die Methode
gps2 <- c("setosa","versicolor","virginica")[cutree(clusters,2)]
gps <- c("setosa","versicolor","virginica")[cutree(clusters,3)]

table(true=rownames(y),pred=gps2) #2 Cluster
table(true=rownames(y),pred=gps)  #3 Cluster
clusterCut <- cutree(clusters, 3)


ggplot(sampleiris, aes(Petal.Length, Petal.Width, color = sampleiris$Species)) + # wie genau ist die Methode
  ggtitle("Ward Methode \n Kreismitte entspricht der Clusterlösung") + # Titel mit Verfahren ->anpassen
  geom_point(alpha = 0.4, size = 3.5) + geom_point(col = clusterCut) + 
  scale_color_manual(values = c('black', 'red', 'green'))



