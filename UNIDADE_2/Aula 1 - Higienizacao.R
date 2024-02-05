# Boas Práticas em Padronização de Dados:
'
CRISP-DM – Cross Industry Standard Process for Data Mining (Processo padrão interindústrias para mineração de dados)
'

dados = read.csv("C:/dir/diretorio/NOME_ARQUIVO.csv", header = T, sep = ";")

dados # visualiza a tabela

str(dados) # avalia a estrutura dos dados

levels(as.factor(dados$coluna_dos_dados)) # avaliação dos níveis

dados["coluna_dos_dados"][dados["coluna_dos_dados"]=="valor"] <- "valor 2" # substituição do valor

dados$coluna_dos_dados <- as.numeric(dados$coluna_dos_dados) # converte a coluna para número

summary(dados) # Obtém o resumo estatístico dos dados

slice_max(dados, peso, n=5) # Obtenção dos 5 maiores valores de peso

table(dados$coluna_dos_dados) # Obtêm a frequência bruta

prop.table(table(dados$coluna_dos_dados)) # Obtém a frequência percentual

par(mfrow=c(1,2)) # define a forma de apresentação conjunta em 1 linha e 2 colunas

barplot(prop.table(table(dados$coluna_dos_dados))) # Gráfico de coluna