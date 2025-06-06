# Verónica Hernandez Merino


# Codigo pregunta 12 y 13 
set.seed(42)
n <- 30
altura <- rnorm(n, mean= 170, sd= 10) #Alturas en cm
altura2 <- rnorm(n, mean= 165, sd= 8) #antes del tratamiento


# Crear un data.frame para agrupar los datos
datos <- data.frame(Altura = altura, Altura2 = altura2)

View(datos)

set.seed(42)
n <- 30
altura <- rnorm(n, mean = 170, sd = 10) # Altura después del tratamiento
altura2 <- rnorm(n, mean = 165, sd = 8) # Altura antes del tratamiento

# Crear un data.frame para agrupar los datos
datos <- data.frame(Altura = altura, Altura2 = altura2)

# Realizar la prueba t 
resultado_t <- t.test(datos$Altura, datos$Altura2, paired = TRUE)

# Ver los resultados
print(resultado_t)

# Codigo pregunta 14 y 15

set.seed(42)
n <- 30
altura <- rnorm(n, mean= 170, sd= 10)
peso <- 0.5 * altura + rnorm(n, mean = 0, sd= 5)


cor.test(altura, peso)


# Codigo pregunta 16


# 1. 
set.seed(123)

# 2.
suelo <- rep(c("Arcilloso", "Arenoso", "Franco"), each = 10)

# 3.
crecimiento <- c(rnorm(10, mean =15, sd= 2),
                 rnorm(10, mean =20, sd= 2),
                 rnorm(10, mean =25, sd= 2))
# 4.
datos <- data.frame(Suelo= suelo, Crecimiento= crecimiento)

# 5.
print(datos)

suelo.aov <- aov(datos$Crecimiento ~  datos$Suelo)  
summary(suelo.aov) 

set.seed(123)

# Calculo de media por tipo de suelo
medias <- tapply(crecimiento, suelo, mean)
print(medias)

