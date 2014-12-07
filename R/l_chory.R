#' @title Table of the structure of ways of dispersal
#' 
#'@description This function returns the table of the structure of ways of dispersal in flora. 
#'The values may be taken from BiolFlor database (http://www2.ufz.de/biolflor/index.jsp)
#'@param co "eco" data.frame, containing flora and species' properties
#'@export
l_chory=function(co){chorie=sort(table(co$chory))/length(co$chory)
chor=as.data.frame(chorie)
(df=data.frame(chor=factor(rownames(chor),levels=rownames(chor)),
               sh=as.vector(chorie)))}
