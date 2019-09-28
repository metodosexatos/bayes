#********************************************************#
# www.metodosexatos.com                                  #
# Prof.Ms. Andr� Santos | andre@metodosexatos.com.br     #
# Curso An�lise Bayesiana com R                          #
# Distribui��es de Probabilidade Cont�nuas               #
# Data: 28/09/2019                                       #
#********************************************************#

# Distribui��o Uniforme

# Densidade de probabilidade para x = 3 em uma uniforme U(2,6)
dunif(3, 2, 6)

# Probabilidade acumulada p(X<=3.5)
punif(3.5, 2, 6)

# Probabilidade acumulada p(X>=3.5)
1-punif(3.5, 2, 6)

# Quantil x100q que satisfaz P(X<=x100q) = 0.1
qunif(0.1, 2, 6)

# Uma amostra aleat�ria com 9 elementos
a <- 9
c <- 2
d <- 6
u <- runif(a, c, d)
print(u)

# Representa��o gr�fica da distribui��o uniforme
hist(u)
