#' @title Plot the structure of hemeroby levels (Poznań only)
#' 
#'@description This function plots the structure of hemeroby levels in flora.
#'The usage of this index is constrained only to flora of Poznań, however it may be usefull for someone to modify this function.
#'Hemeroby levels are taken by Jackowiak (1993) and shows species' reaction toanthropopressure
#'@references Jackowiak, B. 1993. Atlas rozmieszczenia roślin naczyniowych w Poznaniu (Atlas of distribution of vascular plants in Poznań). Prace Zakładu Taksonomii Roślin UAM w Poznaniu nr 2 (Publications of the Department of Plant Taxonomy of the Adam Mickiewicz University in Poznań – No 2). 409 pp. (Polish/English text).
#'@param co "eco" data.frame, containing flora and species' properties
#'@export
wyk_hem=function(co,...){
  kh=c("Ex","E","V","p1","p2","p3","PR","I",0,1,2,3,4,5,6)
  hemile=function(x)100*(length(which(co$hem==kh[x]))/length(co$hem))
  df=data.frame(hem=factor(kh,lev=kh),sh=sapply(1:15,hemile))
  p=ggplot2:::ggplot(data=df,ggplot2:::aes(hem,sh))+ggplot2:::geom_bar(stat="identity")
  (p+ggplot2:::scale_y_continuous(name="Share [%]")+ggplot2:::scale_x_discrete("Hemeroby levels")
   +ggplot2:::theme(axis.text.x = ggplot2:::element_text(colour="black",size=12)))}
