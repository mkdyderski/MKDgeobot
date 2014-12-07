#' @title Table of the structure of phytosociological classes
#' 
#'@description This function returns the table of the structure of classes in flora. The 10 most abundant are plotted, and rest of them are grouped as "other"
#'It may be also used to plotting another classifications - this function is flexible
#'@param co "eco" data.frame, containing flora and species' properties
#'@export
l_cl=function(co){wekt=c(sort(table(co$cl), dec=T)[1:10],
                         sum(sort(table(co$cl), dec=T)[11:length(table(co$cl))]))/length(co$cl)
                  wektdf=as.data.frame(wekt)
                  rownames(wektdf)[11]<-"Others"
                  (df=data.frame(fam=factor(rownames(wektdf),
                                            levels=rownames(wektdf)),share=100*as.vector(wekt)))}
