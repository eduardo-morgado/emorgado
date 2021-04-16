setwd("C:\\Users\\emorg\\Desktop\\proyecto mineria de datos")
titan= read.csv(file.choose(), header=TRUE)
library(datasets)
library(dplyr)
attach(titan)
box1=boxplot(AGE, horizontal=TRUE)
stat_box1= boxplot.stats(AGE)
min(stat_box$out)
titanout= AGE[AGE <= 79]

box2=boxplot(titanout, horizontal = TRUE )
stats_box2= boxplot.stats(titanout)
min(stats_box2$out)

titanout2= AGE[AGE<=76]
box3=boxplot(titanout2, horizontal = TRUE )

length(titan$AGE)-length(titanout2)
