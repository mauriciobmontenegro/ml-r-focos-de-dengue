#####################
# Modelos de classificação
#####################
# Montando modelos com diferentes algorítmos

# Link para todos os algorítmos possíveis: https://topepo.github.io/caret/available-models.html
modeloML1<-train(as.factor(NoYes)~humid+temp+trees, data=denguetreino, method="glm")

modeloML2<-train(as.factor(NoYes)~humid+temp+trees, data=denguetreino, method="ranger")

modeloML3<-train(as.factor(NoYes)~humid+temp+trees, data=denguetreino, method="avNNet")