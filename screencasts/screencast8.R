# Zweistichproben t-test (Paare)---------------------------------------------------

help(t.test)
?t.test

install.packages('doBy')
library(doBy)
sleep <-data.frame(sleep)

summary(sleep)
summaryBy(extra ~ group,data=sleep) 

t.test(extra ~ group, data = sleep, 
       alternative = 'two.sided', conf.level = 0.95, paired=TRUE)

t.test(subset(sleep, group== 1)$extra,
       subset(sleep, group== 2)$extra,
       alternative = 'two.sided', conf.level = 0.95, paired=TRUE)

plot(subset(sleep, group== 1)$extra,
            subset(sleep, group== 2)$extra)
abline(a=0,b=1)

