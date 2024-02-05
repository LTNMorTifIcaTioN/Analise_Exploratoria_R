# Medidas descritivas em R

'O pacote dplyr fornece funções mais comuns que ajudam a organizar tabelas de dados,
e para carregar o pacote, usamos o library(dplyr), caso já esteja instalado, ou, caso não esteja,
um comando para instalação antes:

install.packages("nome_do_pacote")

library(nome_do_pacote).'

'Para utilizar as funções descritivas do R, é preciso instalar o pacote ggplot2 por meio do comando:
install.packages("ggplot2") e carregar o pacote ggplot2 na memória do computador por meio da função
library(ggplot2).'

'No ggplot2, há um conjunto de dados chamado mpg (Miles Per Gallon) que é um subconjunto de dados
de economia de combustível que a EPA (Enviroment Protection Agency) disponibiliza.
Variáveis do MPG:
manufacturer - marca
model - modelo
displ - cilindradas
year - ano de fabricação
cyl - número de cilindros
trans - tipo de marcha
drv - tração: f, r, 4
cty - milhas por galão na cidade
hwy - milhas por galão na estrada
fl - ripo de combustível: r, p, d, e, c
class - tipo de carro'

'Para carregar e inspecionar os dados, temos as seguintes funções:
1. data(mtcars)
2. mtcars #mostra o conjunto de dados
3. dim(mtcars) #mostra a dimensão dos dados
4. mtcars[1:5,] #mostra as 5 primeiras linhas
5. names(mtcars) #mostra os nomes das variáveis
6. >help(mtcars) #mostra a documentação do conjunto de dados'

'
> A média e a mediana são calculadas no R por meio das funções mean() e median().
> A medida mais simples de dispersão dos dados é amplitude (range).
> Outras funções importantes do R são:
  var(), que faz o cálculo da variância amostral;
  sd(), que calcula o desvio padrão;
  e hist(), que traça um histograma dos dados.
'

"
Quartis
> Uma medida de variabilidade dos dados é a distência interquartil.
> Os quartis são os intervalos de valores em um conjunto de dados que representam faixas de 25% do volume total.
> A função do R para quartis é através de 'quantile'.
"
fX_k = c(15, 30, 40, 57, 33, 17, 8)

Q1 <- quantile(fX_k, probs = 0.25)
Q2 <- quantile(fX_k, probs = 0.5)
Q3 <- quantile(fX_k, probs = 0.75)

# ESTUDO DE CASO
df <- read.csv("https://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data")

colnames(df) <- c('A', 'alcohol', 'malic acid', 'ash', 'alcalinity of ash', 'magnesium',
                  'total phenols', 'flavonoids', 'non-flavonoids phenols', 'proanthocyanins',
                  'color intensity', 'hue', 'OD280/OD315 of diluted wines', 'proline')

tab <- df[,c(5,8,12)]

# A função summary apresenta os valores estatísticos mais importantes: média, mediana e quartis.
summary(tab)

# E um histograma que apresente uma ideia da distribuição de cada variável é apresentado com a função hist.
hist(tab[,1])
hist(tab[,2])
hist(tab[,3])

#
df2 <- c(0,1,1,2,2,0,0,3,0,0,
             0,2,2,4,2,0,1,5,1,0,
             4,2,2,3,1,1,2,4,2,1,
             5,3,4,3,1,3,1,3,2,1,
             1,1,1,5,5,3,2,4,1,0)

tabela <- table(df2)