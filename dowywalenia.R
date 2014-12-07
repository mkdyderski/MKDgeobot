###usuńtopotem
###do zrobienia plików data
pceco<-read.csv("pceco.csv",sep=";")
pched<-read.csv("pched.csv",sep=";")
pctab<-read.csv("pctab.csv",sep=";")
library(devtools)
use_data(pceco)
use_data(pctab)
