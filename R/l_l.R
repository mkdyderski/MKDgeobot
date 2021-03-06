#' @title Table of the structure of Ellenberg's ligth indicator
#' 
#'@description This function returns the table of the structure of Ellenberg's ligth indicator in flora.
#'1 represents shadow-demaning species, 9 - light-demanding species. 
#'The values may be taken from Ellenberg and Leuschner (2010) 
#'@references Ellenberg H., Leuschner C. 2010. Vegetation Mitteleuropas mit den Alpen in ökologischer, dynamischer und historischer Sicht. UTB UmgH. 
#'@param co "eco" data.frame, containing flora and species' properties
#'@export
l_l=function(co){
  gr=c(1:9,"x")
  socekile=function(x)100*(length(which(co$L==gr[x]))/length(co$L))
  df=data.frame(socek=factor(gr,lev=gr),sh=sapply(1:10,socekile))
  df}