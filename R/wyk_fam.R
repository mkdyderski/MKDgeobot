#' @title Plot the structure of families
#' 
#'@description This function plots the structure of families in flora. The 10 most abundant families are plotted, and rest of them are grouped as "other"
#'@param co "eco" data.frame, containing flora and species' properties
#'@export
wyk_fam <- function (co) {
  wekt <- 100*c(sort(table(co$fam), dec=T)[1:10],
             sum(sort(table(co$fam), dec=T)[11:length(table(co$fam))]))/length(co$fam)
  wektdf <- as.data.frame(wekt)
  rownames (wektdf) [11]<-"Others"
  df=data.frame(fam=factor(rownames(wektdf),
                           levels=rownames(wektdf)),share=as.vector(wekt))
  p=ggplot2:::ggplot(data=df, ggplot2:::aes(fam,share))+ggplot2:::geom_bar(stat="identity")
  (p+ggplot2:::scale_y_continuous(name="Share [%]")+ggplot2:::scale_x_discrete(name="Family")
   +ggplot2:::theme(axis.text.x = ggplot2:::element_text(colour="black",face='italic', angle=90)))}
