#********************************************************#
# www.metodosexatos.com                                  #
# Prof.Ms. André Santos | andre@metodosexatos.com.br     #
# Curso Análise Bayesiana com R                          #
# MODELOS PROBABILÍSTICOS DISCRETOS                      #
# Data: 26/09/2019                                       #
#********************************************************#

# Distribuição Binomial

# Densidade de probabilidade para x = 2, n = 7 e teta = 0.3
dbinom(x = 2, size = 7, prob = 0.3)

# Probabilidade acumulada p(X<=2)
pbinom(q = 2, size = 7, prob = 0.3)

# Probabilidade acumulada p(X>2)
1-pbinom(q = 2, size = 7, prob = 0.3)

# Quantil x100q que satisfaz P(X<=x100q) = 0.4
qbinom(p = 0.4, size = 7, prob = 0.3)

# Uma amostra aleatória com 12 elementos
a <- 7      # valores de 0 a n, para cada elemento da amostra
b <- 1000   # total de elementos na amostra
c <- 0.3    # probabilidade para um único caso
binomial <- rbinom(n = b, size = a, prob = c)

# Representação gráfica da distribuição binomial
hist(binomial)

