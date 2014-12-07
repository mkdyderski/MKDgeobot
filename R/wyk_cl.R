#' @title Plot the structure of phytosociological classes
#' 
#'@description This function plots the structure of classes in flora. The 10 most abundant are plotted, and rest of them are grouped as "other"
#'It may be also used to plotting another classifications - this function is flexible
#'@param co "eco" data.frame, containing flora and species' properties
#'@export
wyk_cl=function(co){
  wekt=c(sort(table(co$cl), dec=T)[1:10],
         sum(sort(table(co$cl), dec=T)[11:length(table(co$cl))]))/length(co$cl)
  wektdf=as.data.frame(wekt)
  rownames(wektdf)[11]<-"Other"
  df=data.frame(fam=factor(rownames(wektdf),
                           levels=rownames(wektdf)),share=100*as.vector(wekt))
  p=ggplot2:::ggplot(data=df, ggplot2:::aes(fam,share))+ggplot2:::geom_bar(stat="identity")
  (p+ggplot2:::scale_y_continuous(name="Share [%]")+ggplot2:::scale_x_discrete("Phytosociological classes")+
     ggplot2:::theme(axis.text.x = ggplot2:::element_text(colour="black",face='italic', angle=90)))}
