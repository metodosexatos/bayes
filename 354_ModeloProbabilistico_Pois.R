#********************************************************#
# www.metodosexatos.com                                  #
# Prof.Ms. André Santos | andre@metodosexatos.com.br     #
# Curso Análise Bayesiana com R                          #
# MODELOS PROBABILÍSTICOS DISCRETOS                      #
# Data: 27/09/2019                                       #
#********************************************************#

# Distribuição de Poisson

# Densidade de probabilidade para x = 2, mi = 1,8
dpois(2, 1.8)

# Probabilidade acumulada p(X<=3)
ppois(3, 1.8)

# Probabilidade acumulada p(X>3)
1-ppois(3, 1.8)

# Quantil x100q que satisfaz P(X<=x100q) = 0.1
qpois(0.1, 1.8)

# Uma amostra aleatória com 8 elementos
a <- 800
mi <- 1.8
pois <- rpois(a, mi)
print(pois)

# Representação gráfica da distribuição de poisson
hist(pois)

