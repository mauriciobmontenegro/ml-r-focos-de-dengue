#####################
# Preparando os dados (treino e teste)
#####################
set.seed(123) # "para contralar a aleatoriedade"
library(caret) # pacote para o ML

# removendo NAs
dengue2 <- na.omit(dengue)

# dividindo o banco de dados para o modelo
dataindex <- createDataPartition(dengue2$NoYes, p= .7, list=FALSE) # 70%

# separando em treino e teste
denguetreino <- dengue2[dataindex,]
dengueteste <- dengue2[-dataindex,]
