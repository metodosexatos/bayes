#********************************************************#
# www.metodosexatos.com                                  #
# Prof.Ms. André Santos | andre@metodosexatos.com.br     #
# Curso Análise Bayesiana com R                          #
# Distribuições de Probabilidade Contínuas               #
# Data: 28/09/2019                                       #
#********************************************************#

# Distribuição Exponencial

# Densidade de probabilidade para x = 0,2 em uma Exp(beta = 0,5)
dexp(2, 0.5)

# Probabilidade acumulada p(X<=3)
pexp(3, 0.5)

# Probabilidade acumulada p(X>=3)
1-pexp(2, 0.5)

# Quantil x100q que satisfaz P(X<=x100q) = 0.35
qexp(0.35, 0.5)

# Uma amostra aleatória com 7 elementos
a <- 7
beta <- 0.5
Exponencial <- rexp(a, beta)
print(Exponencial)

# Representação gráfica da distribuição Exponencial
hist(Exponencial)

