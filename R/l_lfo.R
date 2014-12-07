#' @title Table of the structure of life forms
#' 
#'@description This function retutns the table of the structure of life forms in flora. 
#'Nanophanerophytes and megaphanerophytes were grouped as Phanerophytes (F), woody chamaephytes  and herbaceus chamaephytes were grouped as chamaephytes (C) 
#'T - terophytes, Hy - hydrophytes, G - geophytes, H - hemicryptophytes
#'@param co "eco" data.frame, containing flora and species' properties
#'@export
l_lfo=function(co){hgdf=c("H","M","T","G","Hy","C","Ch","N")
                   lflf=c("H","F","T","G","Hy","C")
                   hgfn=function(x)length(which(co$lf==hgdf[x]))
                   ghil=(sapply(1:8, hgfn)/length(co$lf))*100
                   ghil[2]=ghil[2]+ghil[8]
                   ghil[6]=ghil[6]+ghil[7]
                   (df=data.frame(lf=factor(lflf, lev=lflf),sh=ghil[1:6]))}
