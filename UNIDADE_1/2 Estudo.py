# Estudo de Caso

"""
    Uma empresa de departamentos possui 20 filiais por to_do Brasil, e para alavancar as vendas e conquistar novos clientes,
a direção resolveu investir em uma série de promoções e benefícios para os clientes que realizassem as compras.
    Você foi recém-contratado por essa empresa ficou responsável por fazer um relatório sobre o desempenho de vendas das
20 filiais em que trabalha.
    Use a ferramenta do Python ou do R para resolver os questionamentos a seguir.

    O seu trabalho é apresentar para os superiores à tabela de frequências que achar necessária para resumir os dados.
    Com base na tabela, o que você conclui acerca da eficácia das promoções?
    Que ferramenta gráfica você utilizaria para resumir os dados? Por quê?
    Construa o gráfico escolhido no item anterior e, com base nele, responda:
o que você conclui acerca da eficácia das promoções?
"""

# Resolução

"""
a) A melhor maneira de analisar os dados é através da separação por classes.
> O valor máximo e mínimo dos dados são 9,28 e -2,18.
> Vamos considerar 5 classes, estão a largura da classe será: (9,87 - (-2,18)) / 5 = 2,41 ~ 2,5


"""
import pandas as pd
import matplotlib.pyplot as plt

# Ao usarmos Python e as variáveis do tipo tabela, podemos inserir os dados originais.

T = pd.DataFrame({'valor':

[3,3,3,13,13,13,13,13,13,13,13,13,13,13,13,13,8,8,8,8,8,8,8,8,6,6,6,6,6,6,5,5,5,5,5]
                  })

# A média pode ser obtida com:

print(T.mean())

# E uma tabela de valores e frequências com:

print(T.value_counts())

# Quanto à ferramenta gráfica, a resposta é:
# Histograma, pois ele dá uma ideia do valor médio das vendas e como ele se distribui.
# O histograma usando Python:

"""T.hist(bins=5)
plt.show()"""

# Histograma, pois ele dá uma ideia do valor médio das vendas e como ele se distribui.
# O histograma usando Python:

# Create the histogram
plt.hist(T['valor'], bins=5)

# Add labels and title
plt.xlabel('Valor')
plt.ylabel('Frequência')
plt.title('Histograma de Vendas')

# Show the histogram
plt.show()

#Podemos criar um Dataframe vazio, básico, para isso, o construtor do dataframe precisa ser chamado para criar o DataFrame conforme o exemplo:

import  pandas as pd

df = pd.DataFrame ()

print (df)

#O resultado será: DataFrame vazio

# Também é possível criar dataframe usando uma única lista ou lista de listas, conforme o exemplo:

# valores de string na lista

lst = [ 'Java' ,  'Python' ,  'C' ,  'C ++' ,   'JavaScript' ,  'Swift' ,  'Go' ]

# Chamando o construtor DataFrame na lista

dframe = pd.DataFrame (lst)

print (dframe)

# O resultado será:

"""0 Java

1 python

2 C

3 C ++

4 JavaScript

5 Swift

6 Go"""

# Outro exemplo é criar Dataframe a partir de dicionário de ndarray/listas,
# em que todos os ndarray devem ter o mesmo comprimento.
# O índice será um intervalo (n), em que denota o comprimento da matriz. Exemplo:

data = { 'Fruta' : [ 'Pera' ,  'Maça' ,  'Banana' ,  'Laranja' ],  'Quantidade' : [ 5 ,  4 ,  12 ,  24 ]}

df = pd.DataFrame (data)

print (df)

# O resultado será:

"""Fruta  Quantidade

0 Pera 5

1 Maça 4

2 Banana 12

3 Laranja 24"""


# O próximo exemplo é criar o dataframe de índices usando matrizes:

data = { 'Carros':['Uno','Savero','Gol','Jetta'],  'Avaliações':[8.0,8.0,7.0,9.0]}

df = pd.DataFrame (data, index= [ 'posição1' ,  'posição2' ,  'posição3' ,  'posição4' ])

print (df)

# Saída:

"""Classificações de nome

posição 1 Uno8.0

posição 2 Savero 8.0

posição 3 Gol7.0

posição 4 Jetta9.0"""