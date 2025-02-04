# Verónica Hernández Merino
# 04/02/2025
# Laboratorio 1


# Parte 1 R y Rstudio


# Comencemos a escribir cosas básicas en la consola, usando R como calculadora científica. Por ejemplo, considere las facturas mensuales de una estudiante universitaria de la MCF: teléfono celular $ 300, transporte $ 240, comestibles $ 1527, gimnasio $ 400, alquiler $ 1500, otros $ 1833. Puede usar R para encontrar los gastos totales de la estudiante:


# Realizar más asignaciones para crear variables de transporte, comestibles, gimnasio, alquiler y otros montos correspondientes

celular <- 300; transporte <- 240; comestibles <- 1527; gimnasio <- 400; alquiler <- 1500; otros <- 1833

# Ahora que tiene todas las variables, cree un objeto total con la suma de los gastos:

gastos <- c(celular, transporte, comestibles, gimnasio, alquiler, otros)
total <- sum (gastos)

# Suponiendo que la estudiante tiene los mismos gastos todos los meses, ¿cuánto gastaría durante un semestre escolar? (suponga que el semestre implica cinco meses).

cincomeses <- total * 5

# Manteniendo la misma suposición sobre los gastos mensuales, ¿cuánto gastaría la estudiante durante un año escolar? (suponga que el año académico es de 10 meses).

diezmeses <- total * 10

# AUTOEVALUACIÓN ---------------------------------------------------------------

# Toma los objetos creados de la estudiantes (i.e variables) transporte, comestibles, gimnasio, alquiler y otros y escribamos dentro de la función de combinación c() para crear un vector llamado gastos:

gastos <- c(celular, transporte, comestibles, gimnasio, alquiler, otros)

barplot (gastos, main = "Gastos", names.arg = c("Celular", "Transporte", "Comestibles", "Gimnasio", "Alquiler", "Otros"), col = rainbow (6))

# Descubra como utilizar sort() para ordenar los elementos en la variable gastos, con el fin de organizar los elementos en gastos en orden dececiente.

Gastosdecreciente <- sort (gastos, decreasing = T)

#Descubra como utilizar sort() y barplot() para producir un grafico de barras con barras en orden decreciente

barplot(Gastosdecreciente, main = "Gastos Decreciente", names.arg = c("Otros", "Comestibles", "Alquiler", "Gimnasio", "Celular", "Transporte"), col = "orchid1")

