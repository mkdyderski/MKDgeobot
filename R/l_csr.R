#' @title Table of the structure of Grime's life strategies
#' 
#'@description This function returns the table of the structure of Grime's life strategies in flora. 
#'The values may be taken from BiolFlor database (http://www2.ufz.de/biolflor/index.jsp)
#'@param co "eco" data.frame, containing flora and species' properties
#'@export
l_csr=function(co){chorie=sort(table(co$csr))/length(co$csr)
chor=as.data.frame(chorie)
(df=data.frame(chor=factor(rownames(chor),levels=rownames(chor)),
               sh=as.vector(chorie)))}
