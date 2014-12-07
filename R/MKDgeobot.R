#'
#'Phytosociological releves from Poznań
#'
#'This dataset contains 25 releves from Poznań.
#'The releves were conducted from 2012-2014 in 5 types of forest plant communities: alder carrs Carici elongatae-Alnetum (rel. 1-5), ash-alder riparian forests Fraxino-Alnetum (rel. 6-10), Scots pine plantations - community Pinus-Padus (rel. 11-15), Black locust spontaneous tree stands (Chelidonio-Robinietum) and in oak-hornbeam forests (Galio-Carpinetum).
#'The names of columns are names of species, with number of vegetation layer: 1 - tree layer 2 - lower tree layer (a2), 4- shrub layer, 6 - herb layer, 9 - moss layer
#'
#'The data was collected by Marcin K. Dyderski during geobotanical investigation of urban forests in Poznań (papers are in progres and in print, when will be avaiable, references will be set up). Data was deposed in Polish Vegetation Database.
#'@name pctab
#'@docType data
#'
#'@format A data frame with 25 rows and 170 variables
#'@source releves were send to Polish Vegetation Database \url{http://synbiot.uni.wroc.pl/en/pages/1000.html}
NULL

#'
#'Data about 130 species of plants
#'
#'This dataset contains information about 130 species of vascular plants and mosses.
#'@name pceco
#'@docType data
#'
#'@format A data frame with 130 rows and 21 variables
#'\describe{
#'\item{name}{Latin name of species, without authors}
#'\item{fam}{Latin name of the family}
#'\item{hg}{Historical-ecological group, after Jackowiak (1993): sp-spontaneophytes, ap-apophytes, arch-archaeophytes, kn-kenophytes, ef-ephemerophytes}
#'\item{hemero}{Level of hemeroby, after Jackowiak (1993): 0 - species without synanthropodynamic tendences, 1-6: hemerophilous species (the higher value, the level of fidelity to transformed habitats higher), characters: hemerophobus species (fidelity to non-transformed habitats) - threat categories: PR - potentially vulnerable, I- not certain, p1-p3 - potentially endangered, V- vulnerable, E- endangered, Ex - extinct}
#'\item{soceko}{Scoiological-ecological groups after Jackowiak (1993): not usefull outside Poznań, prepared for author's convience}
#'\item{lf}{Life forms according to Raunkiaer's classification, after Jackowiak (1993): M- megaphanerophytes, N-nanophanerophytes, C- chamaephytes (woody), Ch- chamaephytes (herbaceus), T - terophytes, Hy - hydrophytes, G - geophytes, H - hemicryptophytes}
#'\item{lf_opis}{descriptive, non-analytical list of ALL potential lifeforms}
#'\item{class}{Phytosociological class, after Ratyńska et al. (2011)}
#'\item{choria}{NON analytic- decriptive, all potential modes of dispersal, after BiolFlor database (http://www2.ufz.de/biolflor/index.jsp)}
#'\item{chory}{Main mode of dispersal, after BiolFlor database (http://www2.ufz.de/biolflor/index.jsp)}
#'\item{pollen.vector}{NON analytic- decriptive, all potential polination vectors, after BiolFlor database (http://www2.ufz.de/biolflor/index.jsp)}
#'\item{csr}{Type of Grime's life strategy, after BiolFlor database (http://www2.ufz.de/biolflor/index.jsp)}
#'\item{urbanity}{level of urbanity in scale from 1 - urbanophobous to 5 - urbanophilous, after BiolFlor database (http://www2.ufz.de/biolflor/index.jsp)}
#'\item{stare.lasy}{Is species a Ancient Woodland Indicator species? 0 - no, 1- yes. After Dzownko and Loster (2001)}
#'\item{L}{Ellenberg's ligth indicator, after Ellenberg and Leuschner (2010)}
#'\item{T}{Ellenberg's temperature indicator, after Ellenberg and Leuschner (2010)}
#'\item{C}{Ellenberg's continentality indicator, after Ellenberg and Leuschner (2010)}
#'\item{M}{Ellenberg's moisture indicator, after Ellenberg and Leuschner (2010)}
#'\item{SR}{Ellenberg's soil reaction indicator, after Ellenberg and Leuschner (2010)}
#'\item{N}{Ellenberg's fertility indicator, after Ellenberg and Leuschner (2010)}
#'}
#'@references
#'Jackowiak, B. 1993.Atlas rozmieszczenia roślin naczyniowych w Poznaniu (Atlas of distribution of vascular plants in Poznań). Prace Zakładu Taksonomii Roślin UAM w Poznaniu nr 2 (Publications of the Department of Plant Taxonomy of the Adam Mickiewicz University in Poznań – No 2). 409 pp. (Polish/English text).
#'
#'Ratyńska H., Wojterska M., Brzeg A., Kołacz M., 2011. Multimedialna encyklopedia zbiorowisk roślinnych Polski. NFOSiGW, UKW, IETI.
#'
#'Dzwonko Z., Loster S. 2001. Wskaźnikowe gatunki starych lasów i ich znaczenie dla ochrony przyrody i kartografii roślinności. IGiPZ PAN, Prace Geogr., 178: 120–132.
#'
#'Ellenberg H., Leuschner C. 2010. Vegetation Mitteleuropas mit den Alpen in ökologischer, dynamischer und historischer Sicht. UTB UmgH. 
NULL
