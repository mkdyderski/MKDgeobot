#' @title Plot the structure of historical-geographical groups
#' 
#'@description This function plots the structure of historical-geographical groups in flora. 
#'The groups are plotted in order of anthropopressure responses: spontaneophytes, apophytes, archaeophytes, kenophytes and ephemerophytes
#'@param co "eco" data.frame, containing flora and species' properties
#'@export
wyk_hg=function(co){
lev=c("sp","ap","arch","kn","ef")
df=data.frame(hg=factor(lev, levels=lev),
              share=sapply(1:5,function(i) 100*length(which(co$hg==lev[i]))/length(co$hg)))
p=ggplot2:::ggplot(data=df,ggplot2:::aes(hg,share))+ggplot2:::geom_bar(stat="identity")
(p+ggplot2:::scale_y_continuous(name="Share [%]")+ggplot2:::scale_x_discrete("Historical-geographical groups")
 +ggplot2:::theme(axis.text.x = ggplot2:::element_text(colour="black",size=12)))}
