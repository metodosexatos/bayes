#*************************************************************************#
# www.metodosexatos.com                                                   #
# Prof.Ms. André Santos | andre@metodosexatos.com.br                      #
# Curso Análise Bayesiana com R                                           #
# Probabilidades Posteriores para Famílias Conjugadas de Distribuições    #
# Data: 03/10/2019                                                        #
#*************************************************************************#

# Exemplo 4.3

#- Dados fornecidos
n <- 100       # tamanho da amostra
S <- 10        # desvio padrão(em kg) após 20 dias
Xbarra <- 30   # média(em kg) após 20 dias
media0 <- 45   # ganho médio esperado com base em pesquisas anteriores
prop <- 60     # proposição de que da média ser superior a 60 kg
prob0 <- 0.1   # probabilidade dada pelo especialista da média ser superior a 60 kg

#- Cálculos auxiliares
q <- 1 - prob0                 # probabilidade de ser inferior ou igual a 60 kg
perc <- qnorm(q, 0, 1)         # percentil procurado para uma normal padrão (média = 0, desvio padrão = 1)
sigma0 <- (prop - media0)/perc # desvio padrão da distribuição priori p/ média = 45 kg
print(sigma0)                  # exibe o resultado na tela

#- Medidas de precisão para cálculo dos parâmetros (inverso das variâncias)
c0 <- 1/sigma0^2  # precisão priori
c <- n/S^2        # precisão amostral
c1<- c0 + c       # precisão posterior

# Distribuição Posterior
media1 <- (c0/c1)*media0 + (c/c1)*Xbarra  # estimativa do parâmetro: média
sigma1 <- 1/sqrt(c1)                      # estimativa do parâmetro: desvio padrão
c(media1, sigma1)                         # exibe os resultados na tela








