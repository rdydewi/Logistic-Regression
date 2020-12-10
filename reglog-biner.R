library(ggplot2)
#input data
#variabel Y
mydata <- read.csv("F:/ITS/Semester 6/ADK/DATA_TUGAS_ADK.csv", header=TRUE, sep=";")
head(mydata)
summary(mydata)
a<-xtabs(~Lokasi.Kerja.Impian..Provinsi.+Asal.Daerah..Provinsi.,data=mydata)
a
b<-xtabs(~Lokasi.Kerja.Impian..Provinsi.+Lokasi.Kerja.Impian.Asal.Luar.,data=mydata)
b
c<-xtabs(~Lokasi.Kerja.Impian..Provinsi.+Status.Anak.ke.,data=mydata)
c
d<-xtabs(~Lokasi.Kerja.Impian..Provinsi.+Jenis.Kelamin,data=mydata)
d
e<-xtabs(~Asal.Daerah..Provinsi.+Lokasi.Kerja.Impian.Asal.Luar.,data=mydata)
e
f<-xtabs(~Asal.Daerah..Provinsi.+Status.Anak.ke.,data=mydata)
f
g<-xtabs(~Asal.Daerah..Provinsi.+Jenis.Kelamin,data=mydata)
g
h<-xtabs(~Lokasi.Kerja.Impian.Asal.Luar.+Status.Anak.ke.,data=mydata)
h
i<-xtabs(~Lokasi.Kerja.Impian.Asal.Luar.+Jenis.Kelamin,data=mydata)
i
j<-xtabs(~Status.Anak.ke.+Jenis.Kelamin,data=mydata)
j