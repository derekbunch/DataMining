library(factoextra)
data("multishapes") # Extracts demonstration dataset from "factoextra"

worldfacts <- read.csv("worldfacts.csv")

worldfacts$GDP<-NULL

data.frame(worldfacts)

worldfacts$birthRate <-scale(worldfacts$birthRate)
worldfacts$deathRate <-scale(worldfacts$deathRate)
  worldfacts$lifeExpectancy <-scale(worldfacts$lifeExpectancy)
  worldfacts$infantMortalityRate <-scale(worldfacts$infantMortalityRate)
  worldfacts$unempRate <-scale(worldfacts$unempRate)
  worldfacts$medianAge <-scale(worldfacts$medianAge)
  worldfacts$GDP_Cap <-scale(worldfacts$GDP_Cap)
  worldfacts$Gini <-scale(worldfacts$Gini)
  
  set.seed(123)
  km.res <- kmeans(worldfacts,
                   centers =  5,
                   iter.max = 2000,
                   nstart = 25)
  