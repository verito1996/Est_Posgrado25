Veronica Hernandez Merino

costal <- c(87.7, 80.01, 77.28, 78.76, 81.52, 74.2, 80.71, 79.5, 77.87, 81.94, 80.7, 
            82.32, 75.78, 80.19, 83.91, 79.4, 77.52, 77.62, 81.4, 74.89, 82.95,
            73.59, 77.92, 77.18, 79.83, 81.23, 79.28, 78.44, 79.01, 80.47, 76.23,
            78.89, 77.14, 69.94, 78.54, 79.7, 82.45, 77.29, 75.52, 77.21, 75.99,
            81.94, 80.41, 77.7)
mean(costal)
length(costal)
plot(density(costal),
     main = "Gráfica densidad costales",
     xlab = "Peso cosatles",
     ylab = "Densidad",
     col = "blue",
     lwd = 2)
# Agregar valores de media observada y peso declarado de costales 
abline(v = mean(costal), col ="green", lwd =2, lty =2)
abline(v = 80, col = "red", lwd =2, lty =2)
text(85, 0.06, "media teo")

t.test(costal, mu = 80, alternative = "less")
t.test(costal, mu = 80)

hist(costal)
abline(v=80, col ="red")
abline(h=8, col ="red")

View(sleep)
sleep

boxplot(sleep$extra ~ sleep$group, col = "brown")
shapiro.test(sleep$extra)
bartlett.test(sleep$extra , sleep$group)

t.test(sleep$extra~ sleep$group, var.equal =T)

View(airquality)
airquality
summary(airquality)

aire <- airquality
View(aire)
mean(airquality$Temp)

mayo <- subset(aire$Temp, aire$Month == 5)
mean(mayo)


t.test(mayo, mu=mean(aire$Temp), alternative = "l")
#tranformar en grado centrigrados 
aire$Cent <- (aire$Temp-32)/1.8
boxplot(aire$Temp ~ aire$Month, col ="indianred")

shapiro.test(aire$Cent)
shapiro.test(mayo)
bartlett.test(aire$Cent ~ aire$Month)

boxplot(aire$Ozone ~ aire$Month)
boxplot(aire$Wind ~ aire$Month)

aire$Month <- as.factor(aire$Month)
wind.aov <- aov(aire$Wind ~ aire$Month)
summary(wind.aov)

TukeyHSD(wind.aov)

cor.test(aire$Wind, aire$Temp)
plot(aire$Temp, aire$Wind, pch =20)
0.45^2

plot(aire$Temp, aire$Solar.R)
cor.test(aire$Temp, aire$Solar.R)

plot(aire$Ozone, aire$Temp)
cor.test(aire$Ozone, aire$Temp)

boxplot(aire$Ozone ~ aire$Month, col ="brown")
0.69^2
