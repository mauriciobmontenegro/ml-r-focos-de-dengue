#####################
# Aumentando o modelo
#####################

mb2<-glm(NoYes~humid+temp, data=dengue, family=binomial)
summary(mb2) # ambas variáveis foram significativas

hn2<-data.fram(humid=23, temp=20)

predict(mb2, hn2, type="response")