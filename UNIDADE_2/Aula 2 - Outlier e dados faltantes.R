# Outliers e dados faltantes: definição e causas de ocorrência em conjuntos de dados

dados <- data.frame(consumidor = seq(1, 10, by=1),
                    peso = c(65, 66, 85, 72, 95, 73, 75, 89, 69, 70),
                    altura = c(170, 175, 183, 175, 176, 350, 176, 423, 63, 70)) # Cria do Dataframe

dados
plot(dados$peso, dados$altura, ylab = "Altura (cm)", xlab = "Peso (kg)") # Cria o gráfico


# Quando a informação não está disponível: o que são dados faltantes?

dados2 <- data.frame(cod_usuario=seq(1,15,by=1),
                     renda=c(10000,7200,NA,1230,1250,NA,NA,5100,3450,2100,NA,NA,NA,2200,5800),
                     consumo_total=c(5123,4250,7650,560,600,6300,2200,1400,2200,1056,450,300,
                                     590,950,3590)) #Cria do DataFrame

dados2
compl <- data.frame(N_NA=colSums(is.na(dados2)))  # Cria uma tabela com o número de registros ausentes
                                                  # em cada variável
compl # Visualiza a tabela
compl$completude <- 100-(compl$N_NA/15)*100 # Quantifica a completude e cria uma nova coluna na tabela
compl # Visualiza a tabela após a notificação de completude


# Impacto de outliers e dados faltantes nas medidas descritivas de conjuntos de dados

dadosb2<-data.frame(id_func=seq(1,15,by=1),
salario_original=c(2966,3179,3224,305000,
3374,3216,3319,3398,2963,
3314,2977,3208, 3375, 3391,4200),
salario_corrigido=c(2966,3179,3224,3050,
3374,3216,3319,3398,2963,
3314,2977,3208, 3375, 3391,4200)) # Criação do objeto

dadosb2 # Visualização dos dados

par(mfrow=c(1,2)) # Função para ajuste de posição das figuras
boxplot(dadosb2$salario_original, main="Original") # Boxplot da medida original
boxplot(dadosb2$salario_corrigido, main="Corrigido") # Boxplot da medida corrigida
media1<-mean(dadosb2$salario_original) # Obtém a primeira média (original)
sd1<-sd(dadosb2$salario_original) # Obtém o primeiro desvio padrão (original)
(sd1/media1)*100 # Coeficiente de variação (%) (original)
media2<-mean (dadosb2$salario_corrigido) # Obtém a segunda média (corrigido)
sd2<-sd(dadosb2$salario_corrigido) # Obtém o segundo desvio padrão (corrigido)
(sd2/media2)*100# Coeficiente de variação (%) (corrigido)

data.frame(coluna=c("Original", "Corrigida"),
media=c(media1,media2), desvio_padrao=c(sd1,sd2),
CV=c((sd1/media1)*100, (sd2/media2)*100)) # Criação de tabela sintese


# Dados faltantes como limitação à comparação de variáveis

dadosb2_2 <- data.frame(id_func = c(12, 14, 16, 27, 43, 45, 53, 70, 73, 91, 96, 100),
                        dias_uteis = c(168, 180, 236, 189, NA, NA, 196, 174, 206, 247, NA, 177),
                        salario = c(3179, 2182, 2411, 1865, 3319, 3374, 1872, 3391, 2439, 2247, 2952, 1961))

dadosb2_2 # Visualização dos dados

cor(dadosb2_2$dias_uteis, dadosb2_2$salario) # Obtenção de correlação