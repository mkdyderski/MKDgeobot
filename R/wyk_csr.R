#' @title Plot the structure of Grime's life strategies
#' 
#'@description This function plots the structure of Grime's life strategies in flora. 
#'The values may be taken from BiolFlor database (http://www2.ufz.de/biolflor/index.jsp)
#'@param co "eco" data.frame, containing flora and species' properties
#'@export
wyk_csr=function(co){
  chorie=sort(table(co$csr))/length(co$pollen)
  chor=as.data.frame(chorie)
  df=data.frame(chor=factor(rownames(chor),levels=rownames(chor)),
                sh=as.vector(chorie))
  p=ggplot2:::ggplot(data=df,ggplot2:::aes(chor,sh))+ggplot2:::geom_bar(stat="identity")
  (p+ggplot2:::scale_y_continuous(name="Share [%]")+ggplot2:::scale_x_discrete("Life strategies")
   +ggplot2:::theme(axis.text.x = ggplot2:::element_text(colour="black",size=12)))}
