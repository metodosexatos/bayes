#********************************************************#
# www.metodosexatos.com                                  #
# Prof.Ms. Andr� Santos | andre@metodosexatos.com.br     #
# Curso An�lise Bayesiana com R                          #
# Distribui��es de Probabilidade Cont�nuas               #
# Data: 08/10/2019                                       #
#********************************************************#

# A taxa de crescimento populacional (r) � um dos par�metros de interesse no estudo relacionado �...
# ...din�mica populacional da baleia jubarte.
# H0: r<=0.07 versus H1: r>0.07

w0 <- 2             # penalidade associada ao respectivo erro de decis�o
w1 <- 1             # penalidade associada ao respectivo erro de decis�o
p0 <- 0.52          # probabilidade a priori sobre H0
p1 <- 1-p0          # probabilidade a priori sobre H1
p0x <- 627/2000     # probabilidade posterior de que H0 � verdadeiro
p1x <- 1-p0x        # probabilidade posterior de que H1 � verdadeiro

# Chance a priori
o10 <- p1/p0
print(o10)

# Chance posterior
o10x <- p1x/p0x
print(o10x)

# Fator de Bayes
FB <- o10x/o10
print(FB)

# Limite de decis�o
ld <- (w0/w1)*(1/o10)
print(ld)
