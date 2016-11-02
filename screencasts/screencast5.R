install.packages('doBy')
library(doBy)
library(datasets)

help("doBy")
help.search('standard deviation')

blume <-data.frame(iris)

head(iris)
tail(iris)

summary(iris)
class(iris$Sepal.Length)
class(iris$Species)

var(iris$Sepal.Length)
sd(iris$Sepal.Length)
mean(iris$Sepal.Length)
median(iris$Sepal.Length)
quantile(iris$Sepal.Length, c(.10, .20, .30, .50)) 

summaryBy(. ~ Species, data = iris, FUN=c(mean,sd))

