# Einstichproben t-test ---------------------------------------------------

help(t.test)
?t.test

summary(iris)

#Ho: mu>=5
#Ha: mu<5
t.test(subset(iris, Species== 'setosa')$Sepal.Length, 
       mu=6, alternative = 'less', conf.level = 0.95)


#Ho: mu<=5
#Ha: mu>5
t.test(subset(iris, Species== 'setosa')$Sepal.Length, 
       mu=5, alternative = 'greater', conf.level = 0.95)


#Ho: m!=5
#Ha: m=5
t.test(subset(iris, Species== 'setosa')$Sepal.Length, 
       mu=5, alternative = 'two.sided', conf.level = 0.95)

ttest <- t.test(subset(iris, Species== 'setosa')$Sepal.Length, 
                mu=5, alternative = 'two.sided', conf.level = 0.95)

ttest

attributes(ttest)

ttest$statistic
ttest$p.value


