#********************************************************#
# www.metodosexatos.com                                  #
# Prof.Ms. Andr� Santos | andre@metodosexatos.com.br     #
# Curso An�lise Bayesiana com R                          #
# MODELOS PROBABIL�STICOS DISCRETOS                      #
# Data: 26/09/2019                                       #
#********************************************************#

# Distribui��o Hypergeom�trica

# Densidade de probabilidade para x = 2, M = 15, 'N - M' = 30, n = 10
dhyper(2, 15, 30, 10)

# Probabilidade acumulada p(X<=3)
phyper(2, 15, 30, 10)

# Probabilidade acumulada p(X>=3)
1-phyper(2, 15, 30, 10)

# Quantil x100q que satisfaz P(X<=x100q) = 0.4
qhyper(0.4, 15, 30, 10)

# Uma amostra aleat�ria com 12 elementos
a <- 12
M <- 15
NM <- 30
n <- 10
Hypergeometrica <- rhyper(a, M, NM, n)

# Representa��o gr�fica da distribui��o hypergeometrica
hist(Hypergeometrica)

