#Inferência estatística

#Entrando com o conjunto de dados do arquivo a ser escolhido na janela
dados = read.table(file=file.choose(),  dec = ",", header=T, sep="\t")

#habilita chamadas de variáveis individuais
attach(dados)

#Auxílio do pacote de interface Rcomander (Rcmdr), instalado com:
#install.packages("Rcmdr")
#library(Rcmdr)

#Estimativa pontual, intervalar e teste de hipóteses

#Variável qualitativa - Tipo
#Inferência para uma proporção populacional
mean(Custo_de_fabricação_.em_reais.)local({
   .Table <- xtabs(~ Sucessos , data= dados) 
   cat("\nFrequency counts (test is for first level):\n")
   print(.Table)
   prop.test(rbind(.Table), alternative='two.sided', p=.5, conf.level=.95, 
   correct=FALSE)
})

#Variável quantitativa contínua - “Custo de fabricação (em reais)”
mean(Custo_de_fabricação_.em_reais.)
#Intervalo de confiança
sd(Custo_de_fabricação_.em_reais.)
mean(Custo_de_fabricação_.em_reais.) + sd(Custo_de_fabricação_.em_reais.)*2.009/sqrt(50)
mean(Custo_de_fabricação_.em_reais.) - sd(Custo_de_fabricação_.em_reais.)*2.009/sqrt(50)

#Sintético:
with(dados, (t.test(Custo_de_fabricação_.em_reais., alternative='two.sided', mu=155, 
  conf.level=.95)))

