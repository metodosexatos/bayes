#********************************************************#
# www.metodosexatos.com                                  #
# Prof.Ms. Andr� Santos | andre@metodosexatos.com.br     #
# Curso An�lise Bayesiana com R                          #
# Distribui��es de Probabilidade Cont�nuas               #
# Data: 29/09/2019                                       #
#********************************************************#

# Distribui��o Gama-Inversa

# Considere que X tem uma densidade gama-inversa com par�metros alfa = 2 e beta = 3 e...
# ... estamos interessados em calcular a densidade para X igual a 2.
dgamma(0.5, 2, 3)*0.25

# Para obten��o de percentis para X faz-se uso da fun��o inversa X = Y^(-1). Se querermos...
# ... o percentil P95% de X, fazemos o calculo para Y e elevamos a -1.
qgamma(0.95, 2, 3)^(-1)

# O c�lculo da probabilidade acumulada para, por exemplo, P(X<2)=P(Y^-1<2)=P(Y>0.5)=1-P(Y<=0.5)):
1-pgamma(0.5,2,3)

# A inversa X = Y^-1 � tamb�m usada para obter n�meros aleat�rios de X.
# Segue c�digo para exibi��o de tr�s destes n�meros:
1/rgamma(3, 2, 3)
