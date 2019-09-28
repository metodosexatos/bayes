#********************************************************#
# www.metodosexatos.com                                  #
# Prof.Ms. André Santos | andre@metodosexatos.com.br     #
# Curso Análise Bayesiana com R                          #
# MODELOS PROBABILÍSTICOS DISCRETOS                      #
# Data: 27/09/2019                                       #
#********************************************************#

# Distribuição Binomial Negativa

# Densidade de probabilidade para x = 10 fracassos antes de a = 5 sucessos...
# ... com probabilidade de sucesso em cada ponto da amostra por teta = 0,3
dnbinom(10, 5, 0.3)

# Probabilidade acumulada p(X<=15)
pnbinom(15, 5, 0.3)

# Probabilidade acumulada p(X>=15)
1-pnbinom(15, 5, 0.3)

# Quantil x100q que satisfaz P(X<=x100q) = 0.1
qnbinom(0.1, 5, 0.3)

# Uma amostra aleatória com 8 elementos
a <- 800
s <- 5
t <- 0.3
BinN <- rnbinom(a, s, t)
print(BinN)

# Representação gráfica da distribuição binomial negativa
hist(BinN)

