# Importar datos a R proveniente de diferentes fuentes
# 10/02/2025



# Importar datos ----------------------------------------------------------


ocampo <- read.csv("Datos_ocampo.csv", header = T)

getwd()
ocampo
View(ocampo) 

names(ocampo)

mean(ocampo$TEMP) 
mean(ocampo$DIRS)

boxplot(ocampo$TEMP, col = "lightgreen", 
        main = "Temperatura Ocampo")

hist(ocampo$TEMP, col = "lightcoral",
     main = "Sitio Ocampo",
     xlab = "Temperatura (c)",
     ylab = "Frecuencia")

stem(ocampo$TEMP)

boxplot(ocampo$VELR)

vivero <- read.csv("vivero.csv", header = T)
vivero$Tratamiento <- as.factor(vivero$Tratamiento)

boxplot(vivero$IE ~ vivero$Tratamiento, col = "indianred",
        xlab = "Tratamiento",
        ylab = "IE")



