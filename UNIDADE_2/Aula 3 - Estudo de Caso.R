library(tidyverse) # Carregar o pacote

dados_A<-data.frame(cpf=c(1,3,10, 12, 14, 15,36,39,42,55,85,97),
                    nome=c("Carlos Pereira", "Lucas Silva", "Maria Ferreira",
                    "Marcos Silva", "Marcio Faria", "Jose Moura", "Pedro Lima", "Diego Luiz", "Joana Souza",
                           "Jose Renato S", "Mariana Batista", "Jorge Junior"),
                    consumo_anual=c(8,16,6,23,10,5,21,30,12,25,27,15)) # Cria a base da empresa A
dados_A # Visualizar a base A


dados_B<-data.frame(cpf=c(1,2,4,10,12,14,20,36,39,40,42,50,55,80,85,97,100),
                    renda_mensal=c(2500,2300,3500,3800,3600,2100,
                                   1800,1250,1400,4500, 4000,3260,
                                   3300,5600,2500, 1400,1200)) # Cria a base da empresa B
dados_B # Visualizar a base B

print('left join')
dados_AB <- left_join(dados_A, dados_B, by="cpf")
dados_AB

print('full join')
full_join(dados_A, dados_B, by="cpf")

print('inner join')

dados_AB2 <- inner_join(dados_A, dados_B, by="cpf")
dados_AB2

media <- mean(dados_AB2$renda_mensal) # média da renda mensal
print('Média:')
media
desvio <- sd(dados_AB2$renda_mensal)  # desvio padrão da renda mensal
print('Desvio Padrão:')
desvio
CV <- (desvio/media)*100 # coeficiente de variação
print('Coeficiente de Variação')
CV
