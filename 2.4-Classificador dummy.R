#####################
# Classificador Dummy
#####################

maiscomum <- sum(denguetreino$NoYes==1) / (dim(denguetreino)[1])
maiscomum

# descobre qual é a classe mais comum
if (maiscomum >= 0.5) {
  print("classeMaisComum <- 1")
  classeMaisComum <- 1
} else {
  print("classeMaisComum <- 0")
  classeMaisComum <- 0
}

taxadeacerto <- sum(dengueteste$NoYes==classeMaisComum) /
  (dim(dengueteste)[1])
taxadeacerto