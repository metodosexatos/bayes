#********************************************************#
# www.metodosexatos.com                                  #
# Prof.Ms. André Santos | andre@metodosexatos.com.br     #
# Curso Análise Bayesiana com R                          #
# Distribuições de Probabilidade Contínuas               #
# Data: 28/09/2019                                       #
#********************************************************#

# Distribuição Gama

# Densidade de probabilidade para x = 5 em uma Gama(alfa = 2, beta = 1)
dgamma(5, 2, 1)

# Probabilidade acumulada p(X<=4)
pgamma(4, 2, 1)

# Probabilidade acumulada p(X>=4)
1-pgamma(4, 2, 1)

# Quantil x100q que satisfaz P(X<=x100q) = 0.35
qgamma(0.15, 2, 1)

# Uma amostra aleatória com 8 elementos
a <- 8
alfa <- 2
beta <- 1
gama <- rgamma(a, alfa, beta)
print(gama)

# Representação gráfica da distribuição Gama
hist(gama)

