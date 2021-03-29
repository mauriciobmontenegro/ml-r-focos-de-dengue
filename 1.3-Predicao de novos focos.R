#####################
# Predição de novos focos
#####################
# Com base no modelo criado, é possível predizer a chance de ser 0/1 com base na "humid"
hn<-data.frame(humid=23) # data frame com o novo valor de humid
predict(mb, hn, type="response") # predição do eixo y com base no valor de x