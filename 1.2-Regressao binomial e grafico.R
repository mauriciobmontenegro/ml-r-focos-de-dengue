#####################
# Regressão binomial e gráfico
#####################
# Explicar o conceito de probabilidade utilizando um modelo estatístico binomial
mb<-glm(NoYes~humid, data=dengue, family=binomial)
summary(mb) # a humidade foi significativa

# Gráfico utilizando o ggplot2
library(ggplot2) # pacote
ggplot(dengue, aes(x=humid, y=NoYes)) +
  geom_point() +
  geom_smooth(method="glm", method.args = list(family = "binomial")) # gráfico