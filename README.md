ReadMe
========

This package was created to help my friends from Forestry Student's Associations, Poznań University of Life Sciences start with data analysis. It contains functions which are facilities in floristic and vegetation data analysis. It is also a way of first steep of R learning (*WOW, these ggplots look really awesome and I must to learn how to do this!*) - the strong will to do it:)

The secondary goal of distribution of this package is to simplify my own work. When I developed these functions, i found them usefull and I prefer have them in one package than copy them from file to file.

What is inside?
==========
This package contains very simple functions to group and plot share of ecological groups in floristic list and phytosociological releves. Due to local research custosm, some of these functions may be not usefull. Some of them may require modification to aim your goals. In package I also contained example datasets: one with phytosociological releves and one with floristic list. The usage of functions need `data frame` with colnames like in example. It is (unfortunetaly) essential to **keep the order and names of columns** - because function `tabelka()` is very simple/primitive. 

How to start?
======
If you wanna check the work of functions, use attached datasets:
```{r eval=FALSE}
data(pctab) #for phytosociological table
data(pceco)#for floristic list
```
Ok, let's start. First of all we will create table of ecological indicies using `tabelka()`:
```{r eval=FALSE} 
test<-tabelka (pceco,pctab)
head (test)
```
Now, we can test functions from `wyk_*` and `l_*` families, applied on floristic list:
```{r eval=FALSE}
wyk_fam(pceco)#plot families
l_hg(pceco)#get table of the historical-geographical groups share
```

What will be improved?
========
I would like to:
- make function (tabelka) independent to order of columns
- make functions more editable and modificable
- include options of different methods of data visualisation (black and white and colour)

