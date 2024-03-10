# Generar datos
n <- 9
mu <- 0
sd <- 2
levels <- c("Colombia","Ecuador","Panamá")
x <- rnorm(n,mean = mu, sd = sd) |> round(2) # Variable contínua
x_cat <- sample(levels,size = n,replace = T) # Variable categórica

# Cargar paquetes
# install.packages("DescTools")
library(DescTools)

# Variable categórica

## Moda
Mode(x_cat)
table(x_cat)

# Variable continua

## Media
mean(x)

## Mediana
median(x)

## Cuartiles
quantile(x, type = 4)

## Rango
x |> range() |> diff()

## Rango Intercuartílico
IQR(x)

## Varianza
var(x) # Muestral
VarN(x) # Poblacional

## Desviación Estándar
sd(x) # Muestral
SDN(x) # Poblacional


## Asimetría
Skew(x)

## Curtosis
Kurt(x)

## Coeficiente de variación
CoefVar(x)


