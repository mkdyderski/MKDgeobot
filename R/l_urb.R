#' @title Table of the structure of urbanity
#' 
#'@description This function returns the table of the structure of urbanity in flora.
#'1 represents urbanophobus species, 3 - urbanoneutral, and 5 - urbanophilous. 
#'The values may be taken from BiolFlor database (http://www2.ufz.de/biolflor/index.jsp)
#'@param co "eco" data.frame, containing flora and species' properties
#'@export
l_urb=function(co){ gr=1:5
                    socekile=function(x)100*(length(which(co$urbanity==gr[x]))/length(co$urbanity))
                    (df=data.frame(socek=factor(gr,lev=gr),sh=sapply(1:5,socekile)))}
