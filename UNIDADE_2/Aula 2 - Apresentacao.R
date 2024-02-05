# Apresentação de formas de lidar com outliers e dados faltantes na Análise Exploratória de Dados

dadosb3 <- read.csv("UNIDADE 2 - Limpeza, estruturação e enriquecimento de dados/6_carros.csv", h=T, sep=",") # Carrega os dados
dadosb3

boxplot(dadosb3$preco) # Constrói o boxplot
library(tidyverse) # Carrega o pacote
slice_max(dadosb3, preco,n=5) #Identifica os 5 maiores valores da coluna preco
data.frame(completude=100-(colSums (is.na(dadosb3))/nrow (dadosb3)*100)) # Quantifica a completude (%) de cada variável


#Eliminar o outlier do conjunto de dados.

dadosb3_2<-dadosb3[! (dadosb3Sid==5 |dadosb3Sid==16),] # Elimina as linhas com os códigos 5 e 16.
dadosb3_2 #Visualização do objeto criado


# Substituição pela média dos dados restantes.

summary(dadosb3_2) # Obtém medidas cobre os dados criados
mediab3<-50685 # Cria um objeto com o valor da média pra coluna "preco"
mediab3 # Visualiza o valor
dadosb3$preco[dadosb3$id==5]<-mediab3 # Substitui o valor do id igual a 5
dadosb3$preco[dadosb3$id==16]<-mediab3 # Substitui o valor do id igual a 16
dadosb3


# Estimativa do valor em função de outras variáveis.

library(tidyverse) # Carregamento do pacote (caso ainda não esteja carregado)
dadosb3_3<-drop_na(dadosb3) # Aplicação da função
dadosb3_3 # Visualização do novo conjunto de dados
dadosb3Spreco<-replace_na(dadosb3Spreco, mediab3) # Substituição do NA pela média
dadosb3 # Visualização dos dados