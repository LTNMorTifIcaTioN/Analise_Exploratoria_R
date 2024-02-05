# Redução de dimensão
'
> Reduzir o custo computacional:
> Eliminar redundâncias;
> Diminuir complexidade;
> Utilizar menos espaço;
> Melhor desempenho;
> Redução das dimensões;
'

# Métodos comuns
'
> Árvore de decisão;
> Filtro de alta correlação;
> Filtro de baixa variação;
> Proporção de valor ausente;
> Seleção de recurso de encaminhamento;
'

# Variáveis latentes
'
> não podem ser acessadas diretamente;
> possuem ligação com o mundo externo;
> são representadas por variáveis mensuráveis e observáveis;
'


# Interpretação e aplicação da análise de componentes principais (PCA) na análise exploratória de dados nos programas R

# Objetivos do PCA
'
> redução da dimensão;
> apurar um subconjunto;
> projetar dados multivariados
'

# Eixo Principal
'
> Combinação linear;
> extrair variáveis;
> variância máxima;
> fatores ortogonais;
'

# Vetor próprio
'
> Componente principal;
> Matriz de projeção
>Autovalor;
> Pares próprios;
'

# Autovalores
'
> Raízes;
> Importância explicativa;
> Soma fatorial;
'

library(dplyr)
library(data.table)
library(datasets)
library(ggplot2)

data <- data.table(read.csv("E:/Download/Pizza.csv"))

'
Os comandos que seguem retornam a dimensão da matriz, as primeiras linhas de dados e os tipos de dados das variáveis,
respectivamente.
'

print('View:')
View(data)

print('Dimension')
dim(data)

print('Head')
head(data)

print('STR')
str(data)
print('')

'
Para fins de manutenção dos valores originais, uma cópia do nosso conjunto de dados é feita e, em seguida, executamos
prcomp() com .scale = TRUE para que as variáveis sejam dimensionadas para variância unitária antes da análise.
A variável de destino deve ser ajustada com o valor NULL, pois desejamos que nossa análise retorne os diferentes
tipos de marcas de pizza que existem.
'

pizzas = copy(data)
pizzas = data[, brand := NULL]

'
Antes de continuarmos, vale registrar que o comando prcomp() retorna três dados:
- x: esse parâmetro armazena todos os componentes principais dos dados que podemos usar para criar gráficos e, assim,
entendermos as correlações entre os componentes principais.
- sdev: retorna o desvio padrão, a fim de informar quanta variação cada componente principal tem nos dados.
- rotation: determina quais pontuações de carregamento têm os maiores efeitos no gráfico dos componentes principais,
ou seja, as maiores coordenadas em termos absolutos.
'

pca = prcomp(pizzas, scale.= TRUE)

'
Normalmente, os primeiros componentes principais capturam a variação máxima.
'

pca_1_2 = data.frame(pca$x[,1:2])
plot(pca$x[,1], pca$x[,2])


# Explicação, vantagens e situações de uso da análise fatorial por componentes na análise exploratória de dados
'
Vantagens
> Redução de Repetições;
> Melhora de qualidade;
> Custp e tempo final;
> Evita erros experimentais;
> Nível de confiança;
> Reprodutibilidade;

Decisões
> Calculo: Primeira decisão na análise fatorial.
> Planejamento: Estudo de variáveis e propriedades.
> Amostras: Amostragem dos termos.

> Com a análise fatorial do tipo R, por exemplo, o pesquisador pode usar uma matriz tradicional de correlaçao
entre variáveis como entrada.

Critérios
> Autovalor;
> Diagrama de inclinação;
> Critério de porcentagem;

Métodos
> Método de extração: investigar a relação entre variáveis através da construção de uma equação.
> Interpretação dos fatores: análise de variáveis agrupadas.
'