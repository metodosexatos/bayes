#********************************************************#
# www.metodosexatos.com                                  #
# Prof.Ms. André Santos | andre@metodosexatos.com.br     #
# Curso Análise Bayesiana com R                          #
# Distribuições de Probabilidade Contínuas               #
# Data: 28/09/2019                                       #
#********************************************************#

# Distribuição de Student

# Densidade de probabilidade para x = 1 em uma Student padronizada T com g=18 graus de liberdade
dt(1, 18)

# Probabilidade acumulada p(T<=1)
pt(1, 18)

# Probabilidade acumulada p(X>=1)
1-pt(1, 18)

# Quantil x100q que satisfaz P(X<=x100q) = 0.15
qt(0.15, 18)

# Uma amostra aleatória com 9 elementos
a <- 9
g <- 18
student <- rt(a, g)
print(student)

# Representação gráfica da distribuição de Student
hist(student)

