#********************************************************#
# www.metodosexatos.com                                  #
# Prof.Ms. Andr� Santos | andre@metodosexatos.com.br     #
# Curso An�lise Bayesiana com R                          #
# Distribui��es de Probabilidade Cont�nuas               #
# Data: 28/09/2019                                       #
#********************************************************#

# Distribui��o Gama

# Densidade de probabilidade para x = 5 em uma Gama(alfa = 2, beta = 1)
dgamma(5, 2, 1)

# Probabilidade acumulada p(X<=4)
pgamma(4, 2, 1)

# Probabilidade acumulada p(X>=4)
1-pgamma(4, 2, 1)

# Quantil x100q que satisfaz P(X<=x100q) = 0.35
qgamma(0.15, 2, 1)

# Uma amostra aleat�ria com 8 elementos
a <- 8
alfa <- 2
beta <- 1
gama <- rgamma(a, alfa, beta)
print(gama)

# Representa��o gr�fica da distribui��o Gama
hist(gama)
