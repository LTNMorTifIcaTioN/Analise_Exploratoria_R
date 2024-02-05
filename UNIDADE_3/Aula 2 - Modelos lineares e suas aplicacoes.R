# Gráfico de Dispersão em R
'
> Usando o ggplot2
> Comandos em R:
library(readxl)
library(ggplot2)
pibxconsumo <- read_excel("_/diretório/arquivo.xls")
View(pibxconsumo
ggplot(pibxconsumo, aes(x = X, y = Y) + geom_point(col="bliue") + labs(x="Produto Interno Bruto",
                                                                        y="Consumo", title="Gráfico de Dispersão")
'

# Método dos mínimos quadrados
'
> O métodos dos mínimos quadrados irá estimar para os coeficientes a e b, na equação: (y = a + bx).
'

# Erro aleatório
'
> É o erro que nasce do ponto plotado no gráfico e a coordenada em que passa a reta de ajuste: (e_i = y_i - y^).
> O erro de cada ponto em relação à reta é dado pelo valor de y no plano, menos o valor de y estimado.
'

'
> O método dos mínimos quadrados é calculado pela soma dos quadrados de cada erro que se cometeu entre a reta e o
ponto original.
> O objetivo do método é, portanto, minimizar o erro aleatório.
'

# Com a função data.frame() atribuiremos valores à variável de resposta y e à variável independente x, como segue:
dados <- data.frame(x=c(1.4,1.5,1.7,1.9,2.1,2.2,2.4,3.2,3.7,4.2,4.8,5.2),
                    y=c(6.5,5.8,7.8,8.1,10.4,12.3,13.1,17.4,20.1,24.5,25.5,27.1))

# A função que realiza o ajuste da reta ou modelo de regressão linear no R é a lm():
lm(y ~ x, data = dados) # O argumento y é a variável dependente, o ~ indica que tudo após isto é variável independente, x é a variável independente.

# A Análise de Regressão
'
> A análise de regressão é uma técnica que permite estimar o comportamento médio de uma variável em relação a uma
ou mais variáveis.
'
# Plotando os dados
library(ggplot2)
tempo_x_idade <- data.frame(tempo= c(96, 92, 106, 100, 98, 104, 110, 101, 116, 106, 109, 100, 112, 105, 118,
                                     108, 113, 112, 127, 117),
                            idade = c(20, 20, 20, 20, 25, 25, 25, 25, 30, 30, 30, 30, 35, 35, 35, 35, 40, 40, 40, 40))
View(tempo_x_idade)
ggplot(tempo_x_idade, aes(x = idade, y = tempo)) + geom_point()

# Encontrando o modelo da correlação
modelo <- lm(data = tempo_x_idade)
modelo$coefficients

# Obtendo a reta de ajuste do modelo
ggplot(tempo_x_idade, aes(x = idade, y = tempo)) + geom_point() + geom_smooth(method = lm, se = FALSE)