#' @title Plot the structure of Ellenberg's soil fertility indicator
#' 
#'@description This function returns the table of the structure of Ellenberg's soil fertility indicator in flora.
#'1 represents strongly poor-nutrient soil species, 9 - strongly nutrient-rich soil species. 
#'The values may be taken from Ellenberg and Leuschner (2010) 
#'@references Ellenberg H., Leuschner C. 2010. Vegetation Mitteleuropas mit den Alpen in ökologischer, dynamischer und historischer Sicht. UTB UmgH. 
#'@param co "eco" data.frame, containing flora and species' properties
#'@export
wyk_f=function(co){
  gr=c(1:9,"x")
  socekile=function(x)100*(length(which(co$N==gr[x]))/length(co$N))
  df=data.frame(socek=factor(gr,lev=gr),sh=sapply(1:10,socekile))
  p=ggplot2:::ggplot(data=df,ggplot2:::aes(socek,sh))+ggplot2:::geom_bar(stat="identity")
  (p+ggplot2:::scale_y_continuous(name="Share [%]")+ggplot2:::scale_x_discrete("Ellenberg's fertility indicator")
   +ggplot2:::theme(axis.text.x = ggplot2:::element_text(colour="black",size=12)))}
