#Aula 2 - Características principais de conjuntos de dados e variáveis

"
Classificação dos dados em: Primário, Secundário e Terciário
> Dados primários são aqueles dados que são obtidos da própria empresa ou da própria pesquisa;
> Dados secundários já são os dados que não são próprios, e são obtidos através de uma outra fonte externa;
> Dados terciários são os que são externos e públicos.
"

"
Obtenção dos Dados
> Deve ser sem falhas
> Quantificados e qualitativos
> Pensamento qualitativo: Newton, Curie, Watson e Outros.
> No R, a variavel de nome data.frame lida com dados tabulares.
"

df=data.frame(colunaA = c(1,2,3,4,5,6), colunaB = c(5,6,7,8,9,10), colunaC = c(-1,-3,-5,-7,-9,-11))

df['colunaA']
print('=============================================================================================')
print('')

df[4:6, 'colunaA']
print('=============================================================================================')
print('')

df[4:6, 1]
print('=============================================================================================')
print('')

df[df['colunaA']> 4, 'colunaA']

"
Variáveis Categóricas ou Qualitativas
> São aquelas que não possuem valores numéricos em princípio e são definidas através de categorias;
> As variáveis qualitativas precisam de números para serem avaliadas;
> Variáveis dummy, ou de folga, representam valores de 0 ou 1;
"