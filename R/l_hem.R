#' @title Table of the structure of hemeroby levels
#' 
#'@description This function returns the table representing structure of hemeroby levels in flora. 
#'The share of all hhemeroby levels are calculated. The usage of this index is constrained only to the Poznań, however this function may be useful for anyone who will want to modify it for own usage. 
#'@references Jackowiak, B. 1993. Atlas rozmieszczenia roślin naczyniowych w Poznaniu (Atlas of distribution of vascular plants in Poznań). Prace Zakładu Taksonomii Roślin UAM w Poznaniu nr 2 (Publications of the Department of Plant Taxonomy of the Adam Mickiewicz University in Poznań – No 2). 409 pp. (Polish/English text).
#'@param co "eco" data.frame, containing flora and species' properties
#'@export
l_hem=function(co){kh=c("Ex","E","V","p1","p2","p3","PR","I",0,1,2,3,4,5,6)
                   hemile=function(x)100*(length(which(co$hem==kh[x]))/length(co$hem))
                   (df=data.frame(hem=factor(kh,lev=kh),sh=sapply(1:15,hemile)))}
