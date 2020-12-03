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

library(dplyr) #Herramientas para manipulación de datos
library(DescTools) #Herramientas para estadística descriptiva y análisis de datos
library(ggplot2) #Herramientas de visualziación y representación de datos  
library(psych) #Herramientas de entrada de datos y análisis descriptivo.

#la base de datos sera manejada en la siguiente variable.
#Para estandarización, se extrae desde url

data <- read.csv("https://raw.githubusercontent.com/Lermaa2/ProjectoFinal-BPA/68c182ad59e0039875994b11acfcd40a66949acd/Dataset_Compradores.csv"
                 ,dec=".")
#Realizamos una inspección rapida de los datos inicialmente
head(data,3);tail(data,3)

#Se observa que no existen notas, todas son entradas validas

#Se bsuca identificar si existen valores  Nulas o Vacias
sum(is.na(data)) # 0
is.null(data)    #False

#Se pude concluir que no existen valores Vacios y/o Vacios

str(data)

#Se puede identificar que existen 10000 observaciones y 14 variables
#Se puede apreciar que se cargo un DataFrame de 14 variables. Estas se resumen:
# $ RowNumber    : Indice
# CustomerId     : int  Identifiación del cliente
# Surname        : chr  Apellidos
# CreditScore    : int  Score de Credito
# Geography      : chr  Pais
# Gender         : Fac  Categorica

data$Gender <- factor(data$Gender, labels = c("Male","Female"))

# Age            : int  Edad
# Tenure         : int  Posesiones (?)
# Balance        : num  Balance de cuenta del cliente
# NumOfProducts  : int  Numero de productos bancarios
# HasCrCard      : int  1 0 1 0 1 1 1 1 0 1 ...
data$HasCrCard <- factor(data$HasCrCard, levels=c(1,0),labels = c("Yes","No"))

str(data)
summary(data)
IsActiveMember : int  Factor
EstimatedSalary: num  Salario Estimado
Exited         : int  Factor














