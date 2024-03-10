# En R y Rcmdr se ejecuta la línea actual con Ctrl + R

# Datos no agrupados ----

## Extraer datos ----

# Librería con los datos
library(MASS)
library(Rcmdr)
library(RcmdrMisc)
# Datos
data(Cars93)
# library(openxlsx)
# write.xlsx(Cars93,"Cars93.xlsx")
# Variables importantes:
# * Price: Cuantitativa continua
# * AirBags: Cualitativa
# * Passengers: Cuantitativa discreta (conteos)

## Tablas de contingencia ----

# Rcmdr: Estadísticos > Resúmenes > Disitribución de frecuencias

## Estadísticas descriptivas ----

# Rcmdr: Estadísticos > Resúmenes > Resúmenes numéricos
# Allí se selecciona la variable y en la lestaña 'Estadísticos' se eligen las estadísticas deseadas. Recuerde que el simetría y curtosis:
# * Tipo 1: Poblacional
# * Tipo 2: Modificado (OMITIR)
# * Tipo 3: Muestral
# La simetría y curtosis son muestrales o poblacionales dependiendo de como se calcule la desviación estándar.

# Datos agrupados ----

## Ejemplo de clase ----

install.packages("gds")
library(gds) # Gruped data statistics

# Límites y frecuencias como vectores
limite_inferior <- c(20,25,30,35,40)
limite_superior <- c(24,29,34,39,44)
frecuencias <- c(22,27,32,37,42)

# Calcular estadística descriptivas agrupadas
res <- gds(limite_inferior,limite_superior,frecuencias)
names(res)

## Datos Cars93 ----

# Agrupamos por la variable Price
# Primero, se puede hacer un histograma de la variable:

# Rcmdr: Gráficas > histograma

# Partir de 15 en 15 la variable Price
Price_agrupado <- cut(Cars93$Price,breaks = c(0,10,20,30,40,50,60,70,80))
Price_agrupados

# Ver cómo quedaron las frecuencias absolutas de los grupos
table(Price_agrupado)

## Estadísticas descriptivas ----

# Límites y frecuencias como vectores
limite_inferior <- c(0,10,20,30,40,50,60,70)
limite_superior <- c(10,20,30,40,50,60,70,80)
frecuencias <- c(table(Price_agrupado))

# Calcular estadística descriptivas agrupadas
res = gds(limite_inferior,limite_superior,frecuencias)
names(res)

# note que las estadísticas no dan exactamente iguales a las que sa calcularon con los datos desagrupados porque estas son estimaciones.

# Con los estudiantes se puede hacer el ejercicio de mostrar que si los intervalos se hacen más pequeños, las estadísticas calculadas en datos agrupados se hacen más precisas, es decir, se acercan a las de los datos no agrupados.




