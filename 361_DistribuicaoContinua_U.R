#********************************************************#
# www.metodosexatos.com                                  #
# Prof.Ms. André Santos | andre@metodosexatos.com.br     #
# Curso Análise Bayesiana com R                          #
# Distribuições de Probabilidade Contínuas               #
# Data: 28/09/2019                                       #
#********************************************************#

# Distribuição Uniforme

# Densidade de probabilidade para x = 3 em uma uniforme U(2,6)
dunif(3, 2, 6)

# Probabilidade acumulada p(X<=3.5)
punif(3.5, 2, 6)

# Probabilidade acumulada p(X>=3.5)
1-punif(3.5, 2, 6)

# Quantil x100q que satisfaz P(X<=x100q) = 0.1
qunif(0.1, 2, 6)

# Uma amostra aleatória com 9 elementos
a <- 9
c <- 2
d <- 6
u <- runif(a, c, d)
print(u)

# Representação gráfica da distribuição uniforme
hist(u)

