
install.packages('shiny')
install.packages('HistData')

install.packages('psych')

library(UsingR)
library(shiny)

library(psych)
library(HistData)

library(ggplot2)

#http://rstudio.github.io/shiny/tutorial/


setwd("/Users/michaelbessey/Education/Coursera/DataScience/09 Developing Data Products/coursera_data_products_prj")

runApp()

data(PearsonLee)

head(PearsonLee)
head(GaltonFamilies)
head(Galton)

unique(PearsonLee$gp)

lm1 <- lm(childHeight ~ ., data = GaltonFamilies)
summary(lm1)$r.squared

lm <- lm(childHeight ~ father + mother + gender, data = GaltonFamilies)
summary(lm)
summary(lm)$r.squared

df_newdata <- data.frame(father = 80.5, mother = 59.0, gender = 'male')
predict(lm, newdata = df_newdata, interval = "prediction")
predict(lm, newdata = df_newdata, interval = "confidence")


cor_fam <- cor(GaltonFamilies[,c('childHeight', 'father', 'mother')])
corrplot.mixed(cor_fam)

p <- ggplot(GaltonFamilies, aes(x = father, y = mother))
p <- p + labs(title = "Children Height", x = "Father's Height", y = "Mother's Height")
p <- p + geom_point(aes(colour = gender, size = childHeight))
p


