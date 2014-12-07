#' @title Table of the structure of families
#' 
#'@description This function returns the table representing structure of families in flora. 
#'The share 10 most abundant families are calculated, and rest of them are grouped as "other". 
#'@param co "eco" data.frame, containing flora and species' properties
#'@export
l_fam=function(co){wekt=100*c(sort(table(co$fam), dec=T)[1:10],
                              sum(sort(table(co$fam), dec=T)[11:length(table(co$fam))]))/length(co$fam)
                   wektdf=as.data.frame(wekt)
                   rownames(wektdf)[11]<-"Others"
                   (df=data.frame(fam=factor(rownames(wektdf),
                                             levels=rownames(wektdf)),share=as.vector(wekt)))}
