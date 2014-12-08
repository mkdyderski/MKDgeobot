#' Phytosociological releves analysis
#' 
#'@description This function provides tools to extract synthetic ecological variables from releves. It is constrained to Polish specific conditions and research traditions. However, it supply the quantitative analysis of material and let it be analysed.
#'I don't know what do you need, so feel free to modify the body of the function by adding your custom indices.
#'Mean Ellenberg's indicator values are means weighted by species' abundance. 
#'The usage of functions need `data frame` with colnames like in example. It is (unfortunetaly) essential to **keep the order and names of columns** - because function `tabelka()` is very simple/primitive. 
#'IMPERFECT lazy but useful function
#'@param eco Tabelka ze wskaźnikami ekologicznymi (baza danych)
#'@param tab tabela fitosocjologiczna
#'@return table of parameters:
#'\describe{
#'\item{sp}{Share of spontaneophytes}
#'\item{ap}{Share of apophytes}
#'\item{kn}{Share of spontaneophytes}
#'\item{oxysph}{Share of species from Oxycocco-Sphagnetea}
#'\item{stemed}{Share of species from Stellarietea mediae}
#'\item{qrp}{Share of species from Quercetea roboris-petrae}
#'\item{qf}{Share of species from Querco-Fagetea}
#'\item{alnetea}{Share of species from Alnetea glutinosae}
#'\item{vcpic}{Share of species from Vaccinio-Piceetea}
#'\item{phrag}{Share of species from Phragmitetea}
#'\item{art}{Share of species from Artemisietea vulgaris}
#'\item{molarr}{Share of species from Molinio-Arrhenathereta}
#'\item{sch_car}{Share of species from Scheuchzerio-Caricetea}
#'\item{oldfor}{Share of Ancient Woodland Indicator species }
#'\item{rich}{Species richness - number of species in releve [vegetation only]}
#'\item{N}{Mean Ellenberg's fertility index [vegetation only]}
#'\item{M}{Mean Ellenberg's moisture index [vegetation only]}
#'\item{L}{Mean Ellenberg's ligth index [vegetation only]}
#'\item{SR}{Mean Ellenberg's soil reaction index [vegetation only]}}
#'#'@examples
#'data(pceco)
#'data(pctab) 
#'tabelka(pceco,pctab)
#' @export

tabelka=function(eco,tab){
  ile= function (w,co,key) length(which(eco[which(tab[w,]!=0),co]==key))
  n_zd=1:length(tab[,1])
  rich=sapply(n_zd, function(x)length(which(tab[x,]!=0)))
  envi_df=data.frame(sp=sapply(n_zd, ile,co=3, key="sp")/rich, 
                     ap=sapply(n_zd, ile,co=3, key="ap")/rich,oxysph=sapply(n_zd, ile,co=8, key="Oxy-Sphag")/rich,stemed=sapply(n_zd, ile,co=8, key="Ste-med.")/rich,qrp=sapply(n_zd, ile,co=8, key="Q. roboris-petrae")/rich, kn=sapply(n_zd, ile,co=3, key="kn")/rich,
                     qf=sapply(n_zd, ile,co=8, key="Que-Fag")/rich, alnetea=sapply(n_zd, ile,co=8, key="Alnetea")/rich,
                     vacpic=sapply(n_zd, ile,co=8, key="Vac-Pic")/rich,phrag=sapply(n_zd, ile,co=8, key="Phragm")/rich,art=sapply(n_zd, ile,co=8, key="Art.-Vulg")/rich,
                     molarr=sapply(n_zd, ile,co=8, key="Mol-Arr")/rich,sch_car=sapply(n_zd, ile,co=8, key="Sch-Cari")/rich,oldfor=sapply(n_zd,ile,co=15, key=1), rich=rich)
nam_vegtab=colnames(tab)#niezgodność nazw w zdjęciach i bazie eco
 nam_vegtab=sapply(2:length(nam_vegtab),function(x)strsplit(nam_vegtab,"_")[[x]][1])
 nam_vegtab=sub("\\."," ",nam_vegtab)
 nam_vegtab=sub("\\.","-",nam_vegtab)
 ell_an=data.frame(nam_vegtab) #df roboczy
 ell_an$N=as.numeric(as.character(eco$N[match(nam_vegtab, eco$nam)]))
 ell_an$M=as.numeric(as.character(eco$M[match(nam_vegtab, eco$nam)]))
 ell_an$L=as.numeric(as.character(eco$L[match(nam_vegtab, eco$nam)]))
 ell_an$SR=as.numeric(as.character(eco$SR[match(nam_vegtab, eco$nam)]))
 ind=function(x, tab)(which(tab[x,]!=0))   ###indeksy gatunk?w w danym zdj?ciu
 pokr=function(x,tab) as.numeric(as.vector(unlist(tab[x,(which(tab[x,]!=0))]))) ##warto?? % pokrycia danego gatunku
 d1=ind(1,tab)#na bazie indeksów średnia ważona pokryciem
 p1=pokr(1,tab)
 n_rel=length(tab[,1])
 mEIV=function(x,n,wag){weighted.mean(ell_an[,n][ind(x,tab)],pokr(x,tab),na.rm=T)}
 envi_df$N=sapply(1:n_rel, mEIV, n=2)
 envi_df$M=sapply(1:n_rel, mEIV, n=3)
 envi_df$L=sapply(1:n_rel, mEIV, n=4)
 envi_df$SR=sapply(1:n_rel, mEIV, n=5)
 print(envi_df)}
