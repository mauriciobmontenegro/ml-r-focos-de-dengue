#####################
# Matriz de confusão
#####################

# Avaliando o modelo com o banco de teste
pGLM<-predict(modeloML1, dengueteste)
pRANGER<-predict(modeloML2, dengueteste)
pNNET<-predict(modeloML3, dengueteste)

confusionMatrix(factor(pGLM), factor(dengueteste$NoYes))
confusionMatrix(factor(pRANGER), factor(dengueteste$NoYes))
confusionMatrix(factor(pNNET), factor(dengueteste$NoYes))

# O modelo com Random Forest foi o melhor, com acurácia de 85%