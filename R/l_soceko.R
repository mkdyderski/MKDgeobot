#' @title Table of the structure of sociological-ecological groups
#' 
#'@description This function returns the table of the structure of sociological-ecological groups in flora. 
#''The usage of this index is constrained only to flora of Poznań, however it may be usefull for someone to modify this function.
#'Sociological-ecological groups  are taken by Jackowiak (1993) and shows ecological scales 
#'For better representation of sociological-ecological properties in other areas look for MKDmisc:::wyk_cl
#'@references Jackowiak, B. 1993. Atlas rozmieszczenia roślin naczyniowych w Poznaniu (Atlas of distribution of vascular plants in Poznań). Prace Zakładu Taksonomii Roślin UAM w Poznaniu nr 2 (Publications of the Department of Plant Taxonomy of the Adam Mickiewicz University in Poznań – No 2). 409 pp. (Polish/English text).
#'#'@param co "eco" data.frame, containing flora and species' properties
#'@export
l_soceko=function(co){ gr=1:18
                       socekile=function(x)100*(length(which(co$socek==gr[x]))/length(co$socek))
                       (df=data.frame(socek=factor(gr,lev=gr),sh=sapply(1:18,socekile)))}
