# Script 2
# Derek Bunch
# Spring 2017
#

setwd("/Volumes/Macintosh HD/Users/derekbunch/Documents/School/Spring 2017/Data Mining/Script 2")

barplot(c(40,60)/100,
        main = "Plot 1")

Muenchen <- read.table(file="Muenchendata100.csv", 
                       header = T,
                       sep= ",")
table(Muenchen$q4)

barplot(table(Muenchen$q4))

table(Muenchen$pretest)

hist(Muenchen$pretest,
     col="orange")

barplot(table(Muenchen$gender)/sum(table(Muenchen$gender)))

barplot(table(Muenchen$workshop), horiz=TRUE)

barplot(table(Muenchen$workshop)/sum(table(Muenchen$workshop)), horiz=TRUE)

plot(Muenchen$workshop, Muenchen$gender)

table(Muenchen$workshop, Muenchen$gender)

addmargins(table(Muenchen$workshop, Muenchen$gender))

addmargins(table(Muenchen$workshop, Muenchen$gender))/sum(table
(Muenchen$workshop, Muenchen$gender))

prop.table(table(Muenchen$workshop, Muenchen$gender))

prop.table(table(Muenchen$workshop, Muenchen$gender), margin = 2)

addmargins(prop.table(table(Muenchen$workshop, Muenchen$gender), margin = 2))

barplot(addmargins(table(Muenchen$workshop, Muenchen$gender))/sum(table
(Muenchen$workshop, Muenchen$gender)))

mosaicplot(table(Muenchen$workshop,Muenchen$gender))

mosaicplot(table(Muenchen$workshop,Muenchen$gender),
           col = c("lightblue","blue"),
           main="Workshop Gender Composition")

install.packages("titanic", dependencies = T)

library(titanic)

Titanic <- titanic_train

Titanic$Child <- ifelse(Titanic$Age < 18, "Child", "Adult")

mosaicplot(~Child + Sex + Survived, data = Titanic, color = TRUE)

mosaicplot(~Sex + Child + Survived, data = Titanic, color = TRUE)

tapply(Muenchen$q1, Muenchen$gender, mean, na.rm=TRUE)

barplot(tapply(Muenchen$q1, Muenchen$gender, mean, na.rm=TRUE))

barplot( table(Muenchen$gender,Muenchen$workshop),
         beside=TRUE,
         col =c("gray90", "gray60"),
         main="Number of males and females in each workshop ")

legend(  "topright", c("Female", "Male"), fill=c("gray90", "gray60")  )

dotchart( table(Muenchen$workshop,Muenchen$gender),
          main="Dotchart of Workshop Attendance",
          cex=1.5) # character expansion

hist(Muenchen$posttest)

hist(Muenchen$posttest, probability = T)

lines(density(Muenchen$posttest))

range(Muenchen$posttest[which(Muenchen$gender=="Male")])

median(Muenchen$posttest[which (Muenchen$gender=="Female")])

hist( Muenchen$posttest[which (Muenchen$gender=="Male")],
      col="gray60",
      main = "Posttest for Males Only")

hist(Muenchen$posttest, col ="gray90",       
     main = "Posttest for Males vs Females")

hist( Muenchen$posttest[which (Muenchen$gender=="Male")],
      col="gray60",
      breaks = seq(from=50, to=100, by=5),
      add=T)

legend(  "topright", c("Female", "Male"),
         fill=c("gray90", "gray60")  )

stripchart(Muenchen$posttest ~ Muenchen$workshop, method ="jitter")

plot
