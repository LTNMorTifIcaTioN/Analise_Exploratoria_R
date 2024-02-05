# Aula 3 - Medidas descritivas de conjuntos de dados: como obter as primeiras informações?

"
Percentil
> O percentil da ordem K, Pk é o valor tal que k% dos dados de uma amostra apresenta valores menores ou iguais a Pk.
> Os passos para encontrar o percentil são (SICSÚ;DANA, 2012):
1 - Colocar os dados em ordem crescente.
2 - Calcular a posição i do percentil.
3 - Se i for um número inteiro, Pk será́ a média aritmética entre os valores de ordem i e de ordem (i+1).
"

"
> A mediana é o ponto do meio da distribuição e diferentemente da média, é resistente, exige pouca aritmética e em
pequenos conjuntos de dados é fácil encontrá-la manualmente.
> A média usa o valor real de cada observação.
> A média e a mediana são iguais quando a distribuição dos dados é perfeitamente simétrica.
> Distribuição positivamente assimétrica: acumulada a esquerda do ponto central, com uma cauda à direita.
> Distribuição negativamente assimétrica: acumulada a direita do ponto central, com uma cauda à esquerda.
"

"
Medidas de variabilidade de conjuntos de dados
> A variância populacional pode ser obtida por meio da equação: dev^2 = sum((X_i - med)^2) / N

> A variância amostral é calculada por meio de: dev^2 = sum((X_i - Xmed)^2) / n-1
onde Var = dev^2 e dev = Var^(1/2)

> Para os dados discretos, a variância populacional é calculada de outro modo, de acordo com a equação:
dev^2 = sum[(X_k - med)^2 * f(X_k)] / N ,
em que N é o número de dados da população, med é a média populacional,
N é o número de valores de X_k e f(X_k) é a frequência de X_k.

> A variância amostral para os dados discretos da tabela de frequência também é calculada de outro modo, por meio de:
dev^2 = sum[(X_k - Xmed)^2 * f(X_k)] / n-1

>  Para a comparação, utilizamos o que chamamos de coeficiente de variação (CV).
O CV normaliza o desvio padrão em relação à média, não possui unidade e é dado pelas equações:
CV = dev/med ou CV = s/Xmed
"
# Exemplo:

X_k = c(3, 7, 10)

fX_k = c(3, 4, 1)

Xmed = sum(X_k * fX_k) / sum(fX_k)

n= sum(fX_k)

var = sum((X_k - Xmed)^2 * fX_k) / n-1

print(var)

s = var^(1/2)

print(s)

"
Graus de Liberdade
> Ao se tomar a média da variância, escolhe-se dividir essa grandeza pelo número de observações
menos 1, ou seja:
dev^2 / n-1
> Em um grande número de amostras, pode-se utilizar n ao invés de n-1
"

"
Dados binomiais e de contagem
> podemos obter a média (μ) e o desvio padrão binomial (σ) de uma contagem X
com distribuição binomial baseada em n observações com probabilidade p de sucesso
por meio das equações:
med = n*p
dev = qrad(n*p(1-p))
"
# Ex: Considere que uma prova apresenta 12 questõescom 4 alternativas cada

n = 12
p = 1/4

med = n*p # =3

print(med)

"
Esse valor significa que, em média, o aluno que responder ao acaso todas as questões, acertará 3.
"

# O desvio padrão binomial é dado por:
s = sqrt(n*p*(1-p)) # 1,5

print(s)

"
Distribuição Binominal
> Os tipos sanguíneos de filhos que são dos mesmos pais dependem da genética dos pais,
são independentes e de probabilidades fixas.
Cada filho que nasce tem probabilidade 0,25 de ter sangue do tipo O, tipo A, tipo B e AB.
Se esses pais têm 4 filhos, qual é a probabilidade de exatamente 2 deles terem tipo sanguíneo O?
"
n = 4
p = 0.25
c = 2
np = 1 - p
p_sffs = 0.25^c * 0.75^c
pind = (np * n) * c
ptotal = pind * p_sffs
print(ptotal)

print('')

#Estudo de Caso
"
Um hospital que atende a diversos planos de saúde, preocupado com a saúde dos seus associados em relação à obesidade,
fez uma pesquisa sobre as condições de saúde de 200 pacientes.
Durante um período, os hospitais da rede coletaram informações sobre o peso desses pacientes,
e os dados foram agrupados em classes e apresentados na Tabela 6 de distribuição de frequências,
ordenados de forma crescente e com as respectivas frequências absolutas.

O hospital que o contratou espera que você utilize todos os seus conhecimentos em análise de dados para analisar
a saúde desse grupo, para isso,
você deve calcular o primeiro quartil,
o sétimo decil
e o percentil de ordem 60.
"

print('')

X_k = c(mean(c(50, 60)), mean(c(60, 70)), mean(c(70, 80)), mean(c(80, 90)), mean(c(90, 100)), mean(c(100, 110)), mean(c(110, 120)))

fX_k = c(15, 30, 40, 57, 33, 17, 8)

fAc = c(15, 45, 85, 142, 175, 192, 200)

Xmed = sum(X_k * fX_k) / sum(fX_k)

n= sum(fX_k)

var = sum((X_k - Xmed)^2 * fX_k) / n-1

# Primeiro Quartil
Q1 = n / 4

# Sétimo Decil
D7 = 7 * (200/10)

# Percentil de ordem 60
p60 = 60 * (200/100)

"Q = LimiteInf_Qx + ((PosQx - fAc_Qx-1) / fXk_Qx) * Amplitude_Qx"

# Agora, vamos calcular os valores de q1, D7 e P60 a partir das equações:
Q_1 = 70 + ((50 - 45)/40)*10
print(Q_1)

D_7 = 80 + ((140 - 85)/57)*10
print(D_7)

P_60 = 80 + ((120 - 85)/57)*10
print(P_60)
