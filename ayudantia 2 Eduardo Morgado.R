setwd("C:\\Users\\emorg\\Desktop\\proyecto mineria de datos")
data= read.csv(file.choose(),header=TRUE)

library(dplyr)
library(quanteda)
library(ggplot2)
library(tidyverse)
library(utf8)

##borramos datos char para que no nos complique el análisis de variables numericas

var_numericas= data[,!colnames(data) %in% c("id_partido", "fasepartido", "local", "tiempo","formationUsed", "torneo")]
posecion= var_numericas[order(var_numericas$possessionPercentage, decreasing = TRUE),]

## la catolica contra iquique en un determinado partido logro obtener una posecion de balon del 79%


## filtramos por el ambito de la posecion de balon 

var_pases = var_numericas[,colnames(var_numericas) %in% c("equipo", "partido", "accuratePass", "totalPass", "precision_pases")]
var_pases1 = var_numericas[order(var_numericas$precision_pases, decreasing = TRUE),]

colo= filter(var_pases, equipo== "Colo Colo")


##analisis visual cantidad de pases del colo en cada partido que jugo
dotchart(colo$totalPass, labels = utf8_encode(colo$partido), cex=0.5, xlab = "Pases", ylab = "Partido")
