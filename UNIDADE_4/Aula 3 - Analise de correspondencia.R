# Análise de correspondência simples: princípio, uso e interpretação em dados categóricos nos programas R ou Python

#install.packages("FactoMineR", "gglot2", "readxl")
#install.packages("devtools")
#devtools::install_github("kassambara/factoextra")
library("ggplot2")
library("FactoMineR")
library("factoextra")
library("readxl")
library("gplots")
library("corrplot")
library("graphics")
library("foreign")
library("readxl")

# ler os dados
#investidor <- read_excel("perfil investidor aplicacao.xlsx")

# Criar o dataset investidor
investidor <- data.frame(
  perfil = c("Conservador", "Moderado", "Agressivo", "Moderado", "Conservador", "Agressivo", "Moderado"),
  aplicacao = c("Poupança", "CDB", "Ações", "CDB", "Poupança", "Ações", "CDB")
)


investidor

#atribuir niveis ao perfil e tipo de aplicação
investidor$perfil <- factor (investidor$perfil, levels = c("Conservador", "Moderado", "Agressivo"))

investidor$aplicacao <- factor (investidor$aplicacao, levels = c("Poupança", "CDB", "Ações"))

tab <- table (investidor$perfil, investidor$aplicacao)
tab

# Tabela de contingência
'
Frequência - categoria;
Cálculo de Similaridade;
Complexidade;
Organização de Dados;

> A principal aplicação em tabelas de contigência +e resultar em uma visualizaçºao da "atração" ou "Repulsão"
entre as variáveis e suas categorias.

Uma tabela de contingência é uma forma de organizar e resumir dados categóricos em um formato tabular.
Ela é usada para analisar a relação entre duas ou mais variáveis categóricas e mostrar a distribuição
conjunta dos valores dessas variáveis.
Uma tabela de contingência é construída colocando as categorias de uma variável em linhas e as categorias de
outra variável em colunas. Os valores nas células da tabela representam a contagem ou frequência de ocorrências
conjuntas das categorias das variáveis.
Por exemplo, suponha que temos duas variáveis categóricas: "Gênero" e "Preferência de Filme".
Podemos construir uma tabela de contingência para analisar a relação entre essas duas variáveis.
A tabela teria as categorias "Masculino" e "Feminino" na linha e as categorias "Ação", "Comédia" e "Drama" nas colunas.
As células da tabela conteriam as contagens de quantas pessoas de cada gênero preferem cada tipo de filme.
Uma tabela de contingência permite visualizar a distribuição conjunta das categorias das variáveis e identificar
possíveis associações ou padrões entre elas. Além disso, é possível calcular medidas estatísticas,
como o teste qui-quadrado, para avaliar a independência ou associação entre as variáveis.
As tabelas de contingência são amplamente utilizadas em diversas áreas, como estatística, ciências sociais,
marketing e pesquisa de mercado, para analisar e interpretar dados categóricos e entender as relações entre
diferentes variáveis.
'

# Carregar o conjunto de dados mtcars
data(mtcars)

# Criar uma tabela de contingência entre as variáveis "cyl" e "gear"
contingency_table <- table(mtcars$cyl, mtcars$gear)

# Exibir a tabela de contingência
print(contingency_table)
plot(contingency_table)

'
Neste exemplo, estamos criando uma tabela de contingência entre as variáveis "cyl" (número de cilindros) e
"gear" (número de marchas) do conjunto de dados "mtcars". A função table() é usada para criar a tabela de contingência,
passando as colunas correspondentes como argumentos.
A tabela de contingência resultante mostrará a distribuição conjunta das categorias das variáveis "cyl" e "gear",
com as categorias de "cyl" nas linhas e as categorias de "gear" nas colunas.
Os valores nas células da tabela representam a contagem de ocorrências conjuntas das categorias.
'

# Análise de Correspondência
'
> Associação de Variáveis;
> Variáveis Categóricas;
> Tabelas de Contingência;
> Fatores Relacionados;

A análise de correspondência é particularmente útil para descrever matrizes com grandes quantidades de dadps discretos.

A Análise de Correspondência é uma técnica estatística utilizada para analisar a associação entre variáveis categóricas
em um conjunto de dados. Ela é especialmente útil quando temos várias variáveis categóricas e queremos explorar a
relação entre elas de forma visual e quantitativa.
A Análise de Correspondência é uma extensão da Análise de Componentes Principais (PCA) para variáveis categóricas.
Ela busca encontrar uma representação gráfica das categorias das variáveis que melhor capture as associações entre elas.
Essa representação é geralmente feita em um espaço bidimensional,
onde as categorias são posicionadas de acordo com suas associações.
'

# Carregar o pacote necessário
library("FactoMineR")

# Carregar o conjunto de dados
data(mtcars)

# Criar uma tabela de contingência entre as variáveis "cyl" e "gear"
contingency_table <- table(mtcars$cyl, mtcars$gear)

# Remove empty rows and columns from the contingency table
contingency_table <- contingency_table[rowSums(contingency_table) > 0, colSums(contingency_table) > 0]

# Realizar a Análise de Correspondência
correspondence_analysis <- MCA(contingency_table)

# Plotar o gráfico de correspondência
plot(correspondence_analysis)

# Correspondência vs PCA
'
> Eliminação de Sobreposições;
> Combinações Lineares;
> Redução de Dimensionalidade;

A análise de correspondência (AC) e a Análise de Componentes Principais (PCA) são técnicas estatísticas utilizadas para
analisar dados multivariados, mas existem algumas diferenças importantes entre elas.
Aqui estão as principais diferenças entre a análise de correspondência e a PCA:

Tipo de dados: A AC é usada para analisar variáveis categóricas, enquanto a PCA é usada para analisar variáveis
numéricas contínuas. A AC lida com tabelas de contingência, que são matrizes de frequência de ocorrência de categorias,
enquanto a PCA lida com matrizes de covariância ou correlação entre variáveis numéricas.

Representação gráfica: A AC busca encontrar uma representação gráfica das categorias das variáveis categóricas que
melhor capture as associações entre elas. Essa representação é geralmente feita em um espaço bidimensional,
onde as categorias são posicionadas de acordo com suas associações. Por outro lado, a PCA busca encontrar uma
representação gráfica das variáveis numéricas em um espaço de menor dimensão que preserve a maior parte da
variabilidade dos dados.

Medidas de associação: Na AC, as medidas de associação entre as categorias das variáveis categóricas são calculadas,
como o qui-quadrado, para avaliar a independência ou associação entre as variáveis. Na PCA, as medidas de associação
são baseadas na covariância ou correlação entre as variáveis numéricas.
Redução de dimensionalidade: Tanto a AC quanto a PCA podem ser usadas para reduzir a dimensionalidade dos dados.
No entanto, a AC reduz a dimensionalidade das variáveis categóricas, enquanto a PCA reduz a dimensionalidade das
variáveis numéricas.

Interpretação dos resultados: A interpretação dos resultados da AC é baseada nas posições relativas das categorias no
gráfico de correspondência, identificando associações entre as categorias e possíveis padrões. Na PCA, a interpretação
dos resultados é baseada nos componentes principais, que representam combinações lineares das variáveis originais.
Em resumo, a AC é usada para analisar a associação entre variáveis categóricas em um conjunto de dados,
enquanto a PCA é usada para analisar a variabilidade e a estrutura de correlação entre variáveis numéricas.
Ambas as técnicas têm suas aplicações específicas e podem fornecer insights valiosos em diferentes tipos de dados.
'

# Análise Fatorial
'
> Cria indicadores;
> Redução de variáveis;

A Análise Fatorial é uma técnica estatística utilizada para explorar a estrutura subjacente de um conjunto de variáveis
observadas. Ela busca identificar os fatores latentes que explicam a covariância entre as variáveis e reduzir a
dimensionalidade dos dados.
A Análise Fatorial é útil quando temos um grande número de variáveis e queremos entender as relações entre elas de
forma mais simples e interpretação. Ela é amplamente utilizada em áreas como psicologia, ciências sociais, marketing e
pesquisa de mercado.
Durante a Análise Fatorial, os fatores são extraídos a partir das variáveis observadas e são interpretados com base nos
padrões de carga (correlação) entre as variáveis e os fatores. Esses fatores representam construtos subjacentes que não
podem ser diretamente observados, mas que influenciam as variáveis observadas.
Um exemplo de Análise Fatorial em R pode ser realizado utilizando o pacote "psych". Vamos supor que temos um conjunto
de dados com variáveis relacionadas à personalidade, como extroversão, amabilidade, conscienciosidade, neuroticismo e
abertura. Podemos realizar a Análise Fatorial para identificar os fatores subjacentes que explicam a covariância entre
essas variáveis.
'

#install.packages("psych")

# Carregar o pacote necessário
library("psych")

# Criar o dataset personality_data
personality_data <- data.frame(
  idade = c(25, 30, 28, 35, 40),
  genero = c(0, 1, 0, 1, 0),
  extroversao = c(7, 5, 9, 6, 8),
  amabilidade = c(9, 6, 7, 8, 5),
  conscienciosidade = c(8, 7, 6, 9, 7),
  neuroticismo = c(4, 6, 3, 5, 7),
  abertura = c(6, 8, 5, 7, 9)
)

# Exibir o dataset personality_data
print(personality_data)

# Carregar o conjunto de dados
data(personality_data)

# Realizar a Análise Fatorial
factor_analysis <- fa(personality_data, nfactors = 3, rotate = "varimax")

# Exibir os resultados
print(factor_analysis)

'
Neste exemplo, estamos carregando o pacote "psych" e o conjunto de dados "personality_data". Em seguida,
utilizamos a função "fa()" para realizar a Análise Fatorial, especificando o número de fatores desejados (3) e o
método de rotação ("varimax" neste caso). Por fim, exibimos os resultados da Análise Fatorial.
Os resultados da Análise Fatorial incluem as cargas dos fatores, que indicam a correlação entre as variáveis e os
fatores, bem como a variância explicada por cada fator. Essas informações podem ser interpretadas para entender a
estrutura subjacente das variáveis observadas.
É importante ressaltar que a interpretação dos resultados da Análise Fatorial requer conhecimento do domínio do
problema e expertise na área de estudo. Portanto, é recomendado consultar especialistas ou literatura relevante para
uma interpretação adequada dos resultados.
'


# Representação e testes de hipótese associados a análises de correspondência nos programas R ou Python

bebidas <- matrix(c(10, 35, 18, 32, 14, 16, 14, 11, 27), nc=3)
colnames(bebidas) <- c('suco', 'batida', 'vitamina')
rownames(bebidas) <- c("Laranja", "Morango", "Abacaxi")

barplot(bebidas,legend=T,

col=c('grey','orange','blue'))

chisq.test (bebidas)

# Teste de Hipóteses
'
> Qual a média de produtividade da China
> Qual a proporção de peças defeituosas?
> A propagandoa produz efeito positivo nas vendas?
> As pesqiosas pferecem diferentes resultados de aprendizagem?
'

# Definição de Hipóteses
'
> Hipótese Nula (H0);
> Hipótese Inicial (H1);
> Evidências
'

# Erros de Hipóteses
'
> Interferência;
Generalizar resultado;
'

# Conclusão
'
É relativamente simples fazer um teste à medida que se usam as hipóteses, porém em termos estatísticos,
existem alguns pressupostos teóricos.
'