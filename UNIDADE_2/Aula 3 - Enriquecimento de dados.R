# Enriquecimento por combinação de variáveis internas

dados <- data.frame(paciente=seq(1,8,by=1), peso=c(55,61,75,85,96,100,56,61),
                     altura=c(1.71,1.65,1.70,18,1.81,1.75,1.65,1.75),
                     circ_cintura=c(73,69,85,80,85,85,69,68), circ_quadril=c(90,91,96,93,94,98,89,90)) #Cria a tabela de dados e armazena em um objeto

dados #Mostra o objeto criado

dados$IMC <- dados$peso/(dados$altura^2) #IMC = peso/altura^2
dados$RCQ <- dados$circ_cintura/dados$circ_quadril # RCQ = cintura/quadril
dados

# Enriquecimento por aplicação de técnicas estatísticas

media <- mean(dados$IMC) # Obtém a média das observações
desvio <- sd(dados$IMC) # Obtém o desvio das observações
LS <- media+desvio # Obtenção do Limite Superior
LI <- media-desvio # Obtencao do Limite Inferior

dados$classe <- ifelse(dados$IMC>LS, "Alto", ifelse(dados$IMC<LI, "Baixo", "Médio"))
# Cria uma nova coluna categórica
dados # Vizualizar os dados com a coluna adicional


# Apresentação do enriquecimento pelo cruzamento dos dados com outras bases externas disponíveis
# Formas de cruzamento de dados para enriquecimento com dados externos

"
> O inner join, que cruza as linhas das duas tabelas e tem como resultado todas as colunas das duas tabelas referentes às linhas (chave) em comum;
> O left join, que retorna todos os registros da esquerda com os seus correspondentes na tabela da direta;
> O righ join, que tem a mesma lógica do left join, porém considera a tabela à direita como referência;
> O full join, que retorna todos os registros das duas tabelas, mesmo que não haja correspondência direta.
"

dados_internos<-data.frame(id=c(1,2,3,4), cidade=c("Cidade 1","Cidade 4","Cidade 7","Cidade 8")) # Cria o conjunto de dados interno
dados_internos # Visualização dos dados
dados_externos<-data.frame(cidade=c("Cidade 1", "Cidade 2", "Cidade 3", "Cidade 4",
                                       "Cidade 5", "Cidade 6", "Cidade 7", "Cidade 8"),
                              valor=c(50,10,25,30,25,85,96,87)) # Cria o conjunto de dados externos
dados_externos # Visualização dos dados

dados_internos<-left_join(dados_internos,dados_externos, by="cidade") # Realiza o cruzamento e armazena
# dentro do objeto
dados_internos