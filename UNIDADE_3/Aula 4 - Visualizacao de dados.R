# Visualização da Informação
'
Dados versus informação: distinção necessária
'

# Diagrama de Cordas
'
> Um diagrama de cordas é usado para visualizar as inter-relações entre os diferentes grupos.
> Os valores dos grupos ou entidades são organizados em um círculo, e as relações entre eles são cridadas e mostradas
com curvas de cires diferentes.
'

# Variáveis Visuais
'
> São aplicadas na composição harmoniosa dos elementos de uma visualização gráfica.

Cor:
> Trata-se de uma variável visual muito importante para a comunicação visual.

Tamanho:
> O tamanho de um símbolo corresponde ao quanto de espaço ele ocupa.

Posição
> É a localização absoluta de um elemento no gráfico especificada com as coordenadas x, y.
'

# Gráfico de Radar
'
> Os Gráficos de Radas também são chamados de gráficos Spider ou Web.
> Desenha-se e«em R usando a biblioteca fmsb.
> Cada linha é uma entidade. Cada coluna é uma variável quantitativa.
> As primeiras 2 linhas fornecem o mínimo e o máximo que serão usados para cada variável.

A função radarchart
> Desenha o gráfico de radar com várias linhas de um data frame.
> Se o atributo maxmin for TRUE, o dataframe deve incluir o valor máximo na linha 1 e o valor mínimo da série na linha
2 para cada variável. Os dados vem na linha 3 em diante.
'

library(fmsb)

data <- as.data.frame(matrix(sample(2:20, 10, replace = T), ncol = 10))
colnames(data) <- c("Algoritmos", "TCC", "Estatistica", "Calculo", "EstrDados", "Mobile", "Compiladores", "BD",
                    "Engsoft", "POO")

data <- rbind(rep(20, 10), rep(0, 10), data)

radarchart(data)