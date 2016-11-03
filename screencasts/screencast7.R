# Zweistichproben t-test (unabhängig)---------------------------------------------------

help(t.test)
?t.test

summary(iris)

boxplot(iris$Sepal.Length ~ iris$Species)

#H0: Mittelwert setosa = Mittelwert versicolor
#Ha: Mittelwerte unterscheiden sich
t.test(subset(iris, Species== 'setosa')$Sepal.Length,
       subset(iris, Species== 'versicolor')$Sepal.Length,
       alternative = 'two.sided', conf.level = 0.95, var.equal = FALSE)

t.test(subset(iris, Species== 'versicolor')$Sepal.Length,
       subset(iris, Species== 'virginica')$Sepal.Length,
       alternative = 'two.sided', conf.level = 0.95, var.equal = TRUE)

var(subset(iris, Species== 'setosa')$Sepal.Length)
var(subset(iris, Species== 'versicolor')$Sepal.Length)
var(subset(iris, Species== 'virginica')$Sepal.Length)

install.packages("car")
library(car)


leveneTest(subset(iris, Species=='setosa' | Species=='versicolor')$Sepal.Length,
           subset(iris, Species=='setosa' | Species=='versicolor')$Species)


leveneTest(subset(iris, Species=='versicolor' | Species=='virginica')$Sepal.Length,
           subset(iris, Species=='versicolor' | Species=='virginica')$Species)


