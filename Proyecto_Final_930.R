######### PROYECTO FINAL - Business Performance Analysis #########

#Se trabajara con la base de datos suministrada "Dataset_Compradores.csv".

#Una inspección preliminar nos permite confirmar ciertos puntos:

#-A primera vista los datos se ven correctamente separados por comas (",") y 
#poseen encabezado en la primera fila

#-Existen datos con numeros reales (Flotantes) con variaciones en el orden de 
#las centesimas


#Algunas consideraciones:
#-No se manejeran tildes en el script para evitar errores por Enconding.


#Se procede a cargar los datos y la verificación detallada del contenido de 
#cada variable. Adicionalmente, se cargan las liberias a utilizar a lo largo
#del proyecto:

library(??dplyr) #Herramientas para manipulación de datos
library(DescTools) #Herramientas para estadística descriptiva y análisis de datos
library(ggplot2) #Herramientas de visualziación y representación de datos  
library(psych) #Herramientas de entrada de datos y análisis descriptivo.

#la base de datos sera manejada en la siguiente variable
data <- read.csv(file.choose(),dec=".") 

















