#' @title Table of the structure of Ellenberg's moisture indicator
#' @description This function plots the structure of Ellenberg's moisture indicator in flora.
#'1 represents species of dry soils, 5 - moderatly moisture soils, 10 - wet soils and 12 - aquatic species (e.g. Hottonia palustris). 
#'The values may be taken from Ellenberg and Leuschner (2010) 
#'@references Ellenberg H., Leuschner C. 2010. Vegetation Mitteleuropas mit den Alpen in ökologischer, dynamischer und historischer Sicht. UTB UmgH. 
#'@param co "eco" data.frame, containing flora and species' properties
#'@export
l_m=function(co){
  gr=c(1:12,"x")
  socekile=function(x)100*(length(which(co$M==gr[x]))/length(co$M))
  df=data.frame(socek=factor(gr,lev=gr),sh=sapply(1:13,socekile))
  df}