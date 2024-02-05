# Como interpretar resultados: inferência estatística, valor de p e graus de liberdade

# Graus de Liberdade
'
> Quantidade de Informações;
> Valores fornecidos;
> parâmetros populacionais;
> Cálculo de variabilidade;

Possibilidades:
> Tamanho Amostral:
> Aumenta o grau de liberdade;
> Análise estatística;
> Número de observações de dados;
> Parâmetros estatísticos;
> Amostras;
> Média;
> Gráfico de distribuição.
> É necessário coletar o máximo de dados para aumentar o grau de liberdade ou para que seja possível descartar termos
de determinado modelo.

Graus de liberdade é um conceito estatístico que representa o número de valores independentes que podem variar em um
cálculo ou análise estatística. Em outras palavras, é o número de observações de dados que são livres para variar após
a imposição de certas restrições ou condições.
'

# Gerar dados aleatórios
set.seed(123)  # Define uma semente para reproduzir os mesmos resultados
amostra <- rnorm(10, mean = 0, sd = 1)  # Gera uma amostra de 10 valores aleatórios de uma distribuição normal com média 0 e desvio padrão 1

# Calcular a média da amostra
media <- mean(amostra)

# Calcular os graus de liberdade
graus_liberdade <- length(amostra) - 1

# Exibir os resultados
print(paste("Amostra:", amostra))
print(paste("Média:", media))
print(paste("Graus de Liberdade:", graus_liberdade))

'
Neste exemplo, geramos uma amostra de 10 valores aleatórios de uma distribuição normal com média 0 e desvio padrão 1
usando a função rnorm(). Em seguida, calculamos a média da amostra usando a função mean().
Os graus de liberdade são calculados subtraindo 1 do tamanho da amostra (length(amostra) - 1). Neste caso,
como temos 10 observações na amostra, temos 9 graus de liberdade.
'

# Principais bibliotecas, vantagens e desvantagens de R e Python
'
Manipulação de Dados
> data.table:
  alto desempenho;
  grande quantidade de dados;
  install.packages("data.table")
  library(data.table)

> dplyr:
  manipulação de forma intuitiva e amigavel

Visualização de Dados
> ggplot2
  install.packages("ggplot2")
  library(ggplot2)
  é baseado na popular biblioteca de visualização de dados Grapho Grammar
  - Símbolos
  - Dados categóricos
  - Imagens em 3D
> tidyr >> limpeza de dados
  install.packages("tidyverse")
  library(tidyverse)

Relatórios e gráficos
> Shiny para criar um aplicativo Web e kntr para a geração de relatórios
'