#####################
# Importância das variáveis
#####################

modeloML2<-train(as.factor(NoYes)~humid+temp+trees, data=denguetreino, method="ranger", importance="impurity") # adicionando o argumento "importance"
plot(varImp(modeloML2, scale = FALSE))

# O que afeta a presença de focos de dengue? A variável humidade foi a mais importante no nosso modelo.