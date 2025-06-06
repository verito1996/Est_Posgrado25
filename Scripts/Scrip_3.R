library(repmis)

localidad  <- source_data("https://www.dropbox.com/s/fbrwxypacjgeayj/Datos_Rascon_Anova.csv?dl=1")

boxplot(localidad$DAP ~ localidad$Paraje)


 # Revisar normalidad de los datos ---------------------------------------

shapiro.test(localidad$DAP)

hist(localidad$DAP, col = "lightcoral")
bartlett.test(localidad$DAP ~ localidad$EDAD)

t.test(localidad$DAP ~ localidad$EDAD, var.equal = F)

t.test(localidad$DAP ~ localidad$EDAD)

d50 <- rnorm(50, mean = 0, sd =1)
hist(d50)
d100 <- rnorm(100, mean = 0, sd =1)
hist(d100)

d1000 <- rnorm(1000, mean = 0, sd =1)
hist(d1000)

# Transformar x (DAP) usando log10

localidad$Dap_log <- round(log10(localidad$DAP +1),2)
hist(localidad$Dap_log)

library(e1071)

skewness(localidad$DAP)
skewness(localidad$Dap_log)
shapiro.test(localidad$Dap_log)

localidad$sqrt <- round(sqrt(localidad$DAP),2)
skewness(localidad$sqrt)

shapiro.test(localidad$sqrt)
hist(localidad$sqrt, col = "lightcoral")

trans.sqrt <- localidad[,-6]
View(trans.sqrt)

#aov

dap.aov <-aov(localidad$sqrt ~ localidad$Paraje)
              
dap.aov
#summary nos da el resumen de los bases de datos
summary(dap.aov)
summary.aov()
boxplot(localidad$sqrt ~ localidad$Paraje,
        col = "indianred",
        xlab = "Parajes",
        ylab = "DAP (cm)")
text(1,7, "b")
text(2,7, "c")
text(3,7, "a")
text(4,7, "bc")
mtext("Mediciones", side=4)

TukeyHSD(dap.aov)
plot(TukeyHSD(dap.aov), las =1)

print(doc, target = "imagenes2.docx")
