#*************************************************************************#
# www.metodosexatos.com                                                   #
# Prof.Ms. Andr� Santos | andre@metodosexatos.com.br                      #
# Curso An�lise Bayesiana com R                                           #
# Probabilidades Posteriores para Fam�lias Conjugadas de Distribui��es    #
# Data: 03/10/2019                                                        #
#*************************************************************************#

# Exemplo 4.3 - Priori Informativa

#- Dados fornecidos
media0 <- 45   # m�dia da priori
lambda0 <- 2   # lambda da priori
alpha0 <- 2    # alpha da priori
beta0 <- 100   # beta da priori
n <- 20        # tamanho da amostra (total de leit�es)
Xbarra <- 30   # m�dia(em kg) de ganho de peso
S <- 10        # desvio(em kg) sobre o ganho de peso

#- Par�metros da distribui��o posterior
media1 <- (lambda0*media0+n*Xbarra)/(lambda0+n)                          # m�dia da distribui��o posterior
alpha1 <- alpha0 + (n/2)                                                 # alpha da distribui��o posterior
lambda1 <- lambda0+n                                                     # lambda da distribui��o posterior
beta1 <- beta0+(n-1)*S^2/2+n*lambda0*(Xbarra-media0)^2/(2*(lambda0+n))   # beta da distribui��o posterior
c(media1, lambda1, alpha1, beta1)                                        # exibe os par�metros da distribui��o posterior

#- Percentis 2.5%, 50%, 97.5% da priori para precis�o e sigma
perc.precisao0 <- qgamma(c(0.025, 0.50, 0.975), alpha0, beta0)  # percentil da precis�o para priori
print(perc.precisao0)                                           # exibe o resultado na tela
perc.sigma0 <- 1/sqrt(perc.precisao0)                           # percentil de sigma para priori
print(perc.sigma0)                                              # exibe o resultado na tela

#- Percentis 2.5%, 50%, 97.5% da posterior para precis�o e sigma
perc.precisao1 <- qgamma(c(0.025, 0.50, 0.975), alpha1, beta1)  # percentil da precis�o para posterior
print(perc.precisao1)                                           # exibe o resultado na tela
perc.sigma1 <- 1/sqrt(perc.precisao1)                           # percentil de sigma para posterior
print(perc.sigma1)                                              # exibe o resultado na tela
