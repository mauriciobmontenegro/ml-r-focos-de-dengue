#####################
# Árvore de decisão
#####################
library(rattle)
modelohumid<-rpart(as.factor(NoYes)~humid, data=denguetreino)
fancyRpartPlot(modelohumid)

modelotree<-rpart(as.factor(NoYes)~trees, data=denguetreino)
fancyRpartPlot(modelotree)

modelofull<-rpart(as.factor(NoYes)~temp+trees, data=denguetreino)
fancyRpartPlot(modelofull)