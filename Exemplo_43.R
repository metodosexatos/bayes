#*************************************************************************#
# www.metodosexatos.com                                                   #
# Prof.Ms. Andr� Santos | andre@metodosexatos.com.br                      #
# Curso An�lise Bayesiana com R                                           #
# Probabilidades Posteriores para Fam�lias Conjugadas de Distribui��es    #
# Data: 03/10/2019                                                        #
#*************************************************************************#

# Exemplo 4.3

#- Dados fornecidos
n <- 100       # tamanho da amostra
S <- 10        # desvio padr�o(em kg) ap�s 20 dias
Xbarra <- 30   # m�dia(em kg) ap�s 20 dias
media0 <- 45   # ganho m�dio esperado com base em pesquisas anteriores
prop <- 60     # proposi��o de que da m�dia ser superior a 60 kg
prob0 <- 0.1   # probabilidade dada pelo especialista da m�dia ser superior a 60 kg

#- C�lculos auxiliares
q <- 1 - prob0                 # probabilidade de ser inferior ou igual a 60 kg
perc <- qnorm(q, 0, 1)         # percentil procurado para uma normal padr�o (m�dia = 0, desvio padr�o = 1)
sigma0 <- (prop - media0)/perc # desvio padr�o da distribui��o priori p/ m�dia = 45 kg
print(sigma0)                  # exibe o resultado na tela

#- Medidas de precis�o para c�lculo dos par�metros (inverso das vari�ncias)
c0 <- 1/sigma0^2  # precis�o priori
c <- n/S^2        # precis�o amostral
c1<- c0 + c       # precis�o posterior

# Distribui��o Posterior
media1 <- (c0/c1)*media0 + (c/c1)*Xbarra  # estimativa do par�metro: m�dia
sigma1 <- 1/sqrt(c1)                      # estimativa do par�metro: desvio padr�o
c(media1, sigma1)                         # exibe os resultados na tela








