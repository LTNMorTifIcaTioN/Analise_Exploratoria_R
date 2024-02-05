# Tipos de Análises Multivariadas
'
> Basicamente, a análise multivariada se divide em dois grupos:
  > Grupo de técnicas de simplificação dos dados, como meio de sintetizar as variáveis.
  > Grupo que incluí técnicas de inferência.
'

# Análise de Correspondência
'
A análise de correspondência é uma técnica de análise multivariada que tem como objetivo básico verificar a associação
entre variáveis categóricas.
'

# Análise de Cluster
'
Também conhecida como análise de conglomerados, classificação ou agrupamento, esta técnica tem como objetivo agrupar os
elementos selecionados em grupos com características similares entre si.
'

# Análise de Componentes Principais
'
> Também conhecida como PCA, trata-se de um método de análise multivariada que tem por finalidade básica a análise dos
dados de forma reduzida, eliminando as sobreposições e escolhendo a forma mais representativa dos dados a partir de
combinações lineares das variáveis originais.
'

# Efeitos da Multicolinearidade
'
> Variáveis de interesse em um experimento (aquelas medidas ou observadas) são chamadas de variáveis de resposta
ou dependentes.
> Outras variáveis do mesmo experimento que afetam a resposta e podem ser definidas ou medidas pelo experimentador,
são chamadas de preditoras, explicativas ou independentes.

> Quando algumas das variáveis explicativas (x) são semelhantes umas às outras pode-se ter um problema de
multicolinearidade. Neste caso é difícil para a análise de regressão distingui entre o efeito de uma variável e o
efeito de outra.
'
multicolinearidade <- data.frame('Extensao da Multicolinearidade' = c('Pouca', 'Moderada', 'Alta', 'Extremamente alta'),
                                  'Efeitos na analise de regressao' = c(
                                    'Nenhum problema',
                                    'Normalmente nao apresenta problema',
                                    'Consequencias Estatisticas: em muitos casos sera um problema se voce quiser estimar efeitos de variaveis X individuais, ou seja, coeficientes de regressao; pode nao ser um problema se seu objetivo e apenas prever Y.',
                                    'Consequencias Numericas: sempre sera um problema. Calculos feitos em computador podem ate estar errados devido a instabilidade numerica.'
                                  ))

# Seleção das Variáveis Mais Importantes
'
> Definir o significado de "mais importante" Depende dos objetivos da análise.
> Coeficientes maiores não identificam necessariamente as variáveis preditiras mais importantes.
> Unidades de medidas e escalas de valores entre variáveis podem distorcer o grau de relacionamento entre variáveis.
'

# Coeficientes de Regressão Padronizados
'
> Se você padronizar os coeficientes de regressão para que eles sejam baseados na mesma escala, será possível
compará-los.
> Para obter coneficientes padronizados, padronize os valores para todos os seus preditores contínuos.
> Por fim, basta procurar pela variável preditora com o maior valor absoluto para o coeficiente padronizado.
'