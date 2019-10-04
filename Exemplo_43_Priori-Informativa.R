#*************************************************************************#
# www.metodosexatos.com                                                   #
# Prof.Ms. André Santos | andre@metodosexatos.com.br                      #
# Curso Análise Bayesiana com R                                           #
# Probabilidades Posteriores para Famílias Conjugadas de Distribuições    #
# Data: 03/10/2019                                                        #
#*************************************************************************#

# Exemplo 4.3 - Priori Informativa

#- Dados fornecidos
media0 <- 45   # média da priori
lambda0 <- 2   # lambda da priori
alpha0 <- 2    # alpha da priori
beta0 <- 100   # beta da priori
n <- 20        # tamanho da amostra (total de leitões)
Xbarra <- 30   # média(em kg) de ganho de peso
S <- 10        # desvio(em kg) sobre o ganho de peso

#- Parâmetros da distribuição posterior
media1 <- (lambda0*media0+n*Xbarra)/(lambda0+n)                          # média da distribuição posterior
alpha1 <- alpha0 + (n/2)                                                 # alpha da distribuição posterior
lambda1 <- lambda0+n                                                     # lambda da distribuição posterior
beta1 <- beta0+(n-1)*S^2/2+n*lambda0*(Xbarra-media0)^2/(2*(lambda0+n))   # beta da distribuição posterior
c(media1, lambda1, alpha1, beta1)                                        # exibe os parâmetros da distribuição posterior

#- Percentis 2.5%, 50%, 97.5% da priori para precisão e sigma
perc.precisao0 <- qgamma(c(0.025, 0.50, 0.975), alpha0, beta0)  # percentil da precisão para priori
print(perc.precisao0)                                           # exibe o resultado na tela
perc.sigma0 <- 1/sqrt(perc.precisao0)                           # percentil de sigma para priori
print(perc.sigma0)                                              # exibe o resultado na tela

#- Percentis 2.5%, 50%, 97.5% da posterior para precisão e sigma
perc.precisao1 <- qgamma(c(0.025, 0.50, 0.975), alpha1, beta1)  # percentil da precisão para posterior
print(perc.precisao1)                                           # exibe o resultado na tela
perc.sigma1 <- 1/sqrt(perc.precisao1)                           # percentil de sigma para posterior
print(perc.sigma1)                                              # exibe o resultado na tela
