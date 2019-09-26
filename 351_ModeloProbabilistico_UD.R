#********************************************************#
# www.metodosexatos.com                                  #
# Prof.Ms. André Santos | andre@metodosexatos.com.br     #
# Curso Análise Bayesiana com R                          #
# MODELOS PROBABILÍSTICOS DISCRETOS                      #
# Data: 26/09/2019                                       #
#********************************************************#

# Distribuição Uniforme Discreta
#- Geração de amostra aleatória
a <- 2     # valor inicial
b <- 25    # valor final
m <- 100   # tamanho da amostra
uniforme <- sample(a:b, size = m, replace = T) # amostra gerada pelo R
hist(uniforme) # representação gráfica de uma distribuição de probabilidade (histograma)
