#####################
# Curva ROC
#####################
# ROC curve é o mlehor jeito de achar esse "treshold probability"
library(caTools)
# Predict on test: p
p<-predict(modeloML2, dengueteste, type = "response")

# Make ROC curve
colAUC(pRANGER, dengueteste[["NoYes"]], plotROC = TRUE)

library(pROC) # carregando o pacote para as curvas
plot.roc(dengueteste$NoYes, as.numeric(pRANGER), print.auc=TRUE)
plot.roc(dengueteste$NoYes, as.numeric(pGLM), print.auc=TRUE)
plot.roc(dengueteste$NoYes, as.numeric(pRANGER), print.auc=TRUE)