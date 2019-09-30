#********************************************************#
# www.metodosexatos.com                                  #
# Prof.Ms. André Santos | andre@metodosexatos.com.br     #
# Curso Análise Bayesiana com R                          #
# Distribuições de Probabilidade Contínuas               #
# Data: 28/09/2019                                       #
#********************************************************#

# Distribuição Beta

# Densidade de probabilidade para x = 0,2 em uma Beta(alfa = 3, beta = 10)
dbeta(0.2, 3, 10)

# Probabilidade acumulada p(X<=0.2)
pbeta(0.2, 3, 10)

# Probabilidade acumulada p(X>0.2)
1-pbeta(0.2, 3, 10)

# Quantil x100q que satisfaz P(X<=x100q) = 0.15
qbeta(0.15, 3, 10)

# Uma amostra aleatória com 9 elementos
a <- 9
alfa <- 3
beta <- 10
Beta <- runif(a, alfa, beta)
print(Beta)

# Representação gráfica da distribuição Beta
hist(Beta)

