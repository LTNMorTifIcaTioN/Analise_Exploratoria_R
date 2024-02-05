library(dplyr)
library(data.table)
library(datasets)
library(ggplot2)

vendedores <- data.table(read.csv2("E:/Users/Nayan Couto/Documents/Vendedores.CSV", sep = ";"))
View(vendedores)

print('Dimension')
dim(vendedores)

print('Head')
head(vendedores)

print('STR')
str(vendedores)
print('')

data = copy(vendedores)

pca = prcomp(data, scale.= TRUE)
pca_1_2 = data.frame(pca$x[,1:2])
plot(pca$x[,1], pca$x[,2])

