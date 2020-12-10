library(foreign)
library(nnet)
library(ggplot2)
library(reshape2)

ml<-read.csv("E:/ITS/Semester 6/ADK/DATA_TUGAS_ADK.csv", header=TRUE, sep=";")

with(ml,table(Lokasi.Kerja.Impian..Provinsi.,Asal.Daerah..Provinsi.))
with(ml, do.call(rbind, tapply(IPK, Lokasi.Kerja.Impian..Provinsi.,function(x) c(M = mean(x), SD = sd(x)))))

prog2 <- relevel(ml$Lokasi.Kerja.Impian..Provinsi., ref = "Jakarta")
prog2
test <- multinom(prog2 ~ Asal.Daerah..Provinsi.+IPK, data = ml)

test2 <- multinom(prog2 ~ Asal.Daerah..Provinsi.+Lokasi.Kerja.Impian.Asal.Luar.+IPK+TOEFL+Status.Anak.ke.,
                  data = ml)

z<- summary(test)$coefficients/summary(test)$standard.errors

pvalue <- (1 - pnorm(abs(z), 0, 1))*2

head(pp <- fitted(test))

dses <- data.frame(ses = c("low", "middle", "high"),
                   write = mean(multi$write))
predict(test, newdata = dses, "probs")
dwrite <- data.frame(ses = rep(c("low", "middle", "high"),
                               each = 41),write = rep(c(30:70), 3))
pp.write <- cbind(dwrite, predict(test, newdata = dwrite,
                                  type = "probs", se = TRUE))
by(pp.write[, 3:5], pp.write$ses, colMeans)