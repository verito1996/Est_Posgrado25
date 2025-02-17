# 

Importar datos a R proveniente de diferentes fuentes
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

boxplot(vivero$IE ~ vivero$Tratamiento, col = "indianred")


# Revisar normalidad de los datos-------------------------------------------------------------------------

shapiro.test(vivero$IE)

getwd() #para saber en que directorio estas trabajando

ctrl <- subset(vivero$IE, vivero$Tratamiento == "Ctrl")
fert <- subset(vivero$IE, vivero$Tratamiento != "Ctrl")
var(ctrl)
var(fert)
#Revisar homogeneidad de varianza
bartlett.test(vivero$IE ~ vivero$Tratamiento)


t.test(vivero$IE ~ vivero$Tratamiento, var.equal = F)

t.test(vivero$IE ~ vivero$Tratamiento)

#Pruebas dependientes

t.test(vivero$IE ~ vivero$Tratamiento, paired = T)

# t.test una sola muestra
t.test(vivero$IE, mu = 0.85)
