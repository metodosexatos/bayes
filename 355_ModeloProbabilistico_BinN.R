#********************************************************#
# www.metodosexatos.com                                  #
# Prof.Ms. Andr� Santos | andre@metodosexatos.com.br     #
# Curso An�lise Bayesiana com R                          #
# MODELOS PROBABIL�STICOS DISCRETOS                      #
# Data: 27/09/2019                                       #
#********************************************************#

# Distribui��o Binomial Negativa

# Densidade de probabilidade para x = 10 fracassos antes de a = 5 sucessos...
# ... com probabilidade de sucesso em cada ponto da amostra por teta = 0,3
dnbinom(10, 5, 0.3)

# Probabilidade acumulada p(X<=15)
pnbinom(15, 5, 0.3)

# Probabilidade acumulada p(X>=15)
1-pnbinom(15, 5, 0.3)

# Quantil x100q que satisfaz P(X<=x100q) = 0.1
qnbinom(0.1, 5, 0.3)

# Uma amostra aleat�ria com 8 elementos
a <- 800
s <- 5
t <- 0.3
BinN <- rnbinom(a, s, t)
print(BinN)

# Representa��o gr�fica da distribui��o binomial negativa
hist(BinN)
