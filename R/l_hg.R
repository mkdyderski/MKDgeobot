#' @title Table of the structure of historical-geographical groups
#' 
#'@description This function returns the table representing structure of historical-geographical groups in flora. 
#'The share of all historical-geographical groups are calculated 
#'@param co "eco" data.frame, containing flora and species' properties
#'@export
l_hg=function(co){
  lev=c("sp","ap","arch","kn","ef")
  data.frame(hg=factor(lev, levels=lev),
             share=sapply(1:5,function(i) 100*length(which(co$hg==lev[i]))/length(co$hg)))}
