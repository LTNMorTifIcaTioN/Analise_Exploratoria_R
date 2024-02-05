# Análise de agrupamento
'
> A análise de agrupamento, tambémconhecida como análise de conglomerado ou cluster analysis tem como objetivo dividir
um conjunto de observações (elementos, individuos, dados genéricos) em grupos homogêneosm segundo algum critério
conveniente de similaridade. Assim, os elementos pertencentes a um mesmo grupo serão homogêneos entre si, com respeito
a certas características medidas. Enquanto que os pertencentes a grupos diferentes deverão ser heterogêneos entre si
em relação às mesmas características
'

# O processo de agrupamento
'
> O peocesso de agrupamento pode ser sintetizado em cinco etapas:
  1 - A escolha da medida de dissimilaridade.
  2 - A escolha do método de agrupamento (hierárquico ou não hierarquico).
  3 - A escolha do tipo de agrupamento para o método escolhido.
  4 - A decisão sobre o número de grupos.
  5 - A interpretação do resultado do agrupamento.
'

# O método Ward
'
> No método Ward, também chamado de MÍNIMA VARIÂNCIA, a formação dos grupos se dá pela maximização da homogeneidade
dentro dos grupos. A soma de quadrados dentro dos grupos é usada como medidade homogeneidade.
> Apresenta bons resultados tanto para DISTÂNCIAS EUCLIDIANAS quanto para outras distâncias.
> Quando o número de elementos em cada grupo é muito semelhante, pode não apresentar resultados satisfatórios.
'

# Distância euclidiana:
'
trata-se do método mais simples e mais utilizado na medição da distância geométrica no espaço.
Imaginemos dois objetos, com valores X1 e X2. Os valores para o objeto i podem então ser
representados por Xi1 e Xi2 e os valores para o objeto j podem ser representados por Xj1 e Xj2.

O teorema de Pitágoras estabelece, então, que o comprimento dij do segmento ligando o ponto para
o objeto i ao ponto para o objeto j (a distância euclidiana) é obtido pela fórmula:

  dij = {(X_i1 - X_j1)^2 + (X_i2 - Xj2)^2}^1/2
'

# Índice de Jaccard:
'
trata-se de uma métrica que estabelece o grau de sobreposição entre dois conjuntos de dados
e seu princípio é bastante simples. Este índice varia de 0 (quando não há nenhuma similaridade)
a 1 (quando há similaridade total), de modo que medidas complementares de distâncias podem ser
calculadas subtraindo os índices de similaridade de 1.
'

# Dendrograma em R
'
Um dendrograma (DIAGRAMA DE ÁRVORE) é uma estrutura de rede, constituída por um nó raiz que dá origem a vários nós
ligados por ramos. Os últimos nós da hierarquia são chamados de folhas.
'

# Dendrograma básico em R
'
> O conjunto de dados de entrada é uma matriz onde cada linha é uma amostra e cada coluna é uma variável
> O agrupamento é realizado em uma matriz quadrada (amostra x amostra) que fornece a distância entre as amostras.
  Essa distância pode ser calculada com a função dist().
> A função hclust() é utilizada para realizar o agrupamento hierárquico.
> A saída pode ser vizualizada diretamente com o plot()
'

# conjunto de dados em forma matricial
data = matrix(sample(seq(1,2000),200), ncol = 10)

rownames(data) = paste0("amostra_", seq(1,20))

# Distância euclidiana
dist = dist(data[, c(4:8)], diag=TRUE)

# Agrupamento (ou clusterização) hierárquica com hclust
hc = hclust(dist)

# Gráfico
plot(hc)

# O método PCoA (Principal Correspondence Analysis)
'
> Também conhecido como Dimensionamento/Escalonamento Métrico Multidimensional, permite mapear distância entre objetos.
> É apropriado para representar graficamente elementos em um espaço de dimensão menor do que o original.
> Escalonamento Métrico: distâncias métricas.
> Escalonamento não métrico: diferenças de percepção ou preferência

> em R:
  Usaremos dados da variável eurodist()
  Matriz de distância em KM reais entre cidades euroéias
  Calcularemos o PCoA
  Para calcular o PCoA, usaremos a função R cmdscale()
'

pcoa = cmdscale(eurodist, eig = TRUE)
library(vegan)
ordiplot(pcoa, display='sites', type='text')