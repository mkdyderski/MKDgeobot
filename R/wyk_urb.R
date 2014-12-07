#' @title Plot the structure of urbanity
#' 
#'@description This function plots the structure of urbanity in flora.
#'1 represents urbanophobus species, 3 - urbanoneutral, and 5 - urbanophilous. 
#'The values may be taken from BiolFlor database (http://www2.ufz.de/biolflor/index.jsp)
#'@param co "eco" data.frame, containing flora and species' properties
#'@export
wyk_urb=function(co){
gr=1:5
socekile=function(x)100*(length(which(co$urbanity==gr[x]))/length(co$urbanity))
df=data.frame(socek=factor(gr,lev=gr),sh=sapply(1:5,socekile))
p=ggplot2:::ggplot(data=df,ggplot2:::aes(socek,sh))+ggplot2:::geom_bar(stat="identity")
(p+ggplot2:::scale_y_continuous(name="Share [%]")+ggplot2:::scale_x_discrete("Urbanity")
 +ggplot2:::theme(axis.text.x = ggplot2:::element_text(colour="black",size=12)))}
