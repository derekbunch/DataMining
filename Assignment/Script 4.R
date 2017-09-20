# Script 3 RR
# Derek Bunch
# Spring 2017
#

Vitoria <- read.table(file = "VIT2005.csv",
                      header = T,
                      sep = ",")

Vitoria$age

hist(Vitoria$age,
     col = "lightblue")

library(ggplot2)

g0 <- ggplot((Vitoria), aes(Vitoria$age) )
g0 + geom_histogram(fill = "red")

g0 <- ggplot((Vitoria), aes(x = Vitoria$age, y = Vitoria$totalprice) )
g0 + geom_point()

g0 <- ggplot((Vitoria), aes(x = Vitoria$age, y = Vitoria$totalprice) )
g0 + geom_point()+ geom_smooth()

g0 <- ggplot((Vitoria), aes(streetcategory, conservation))
g0 + geom_bar(stat="identity")#+facet_grid(Vitoria$streetcategory ~ conservation)
