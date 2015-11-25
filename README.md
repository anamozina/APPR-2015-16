# Analiza podatkov s programom R, 2015/16

Avtor: Ana Možina

Repozitorij z gradivi pri predmetu APPR v študijskem letu 2015/16.

## Tematika: Analiza podatkov o prometnih nesrečah v Sloveniji

V tem projektu bom raziskala in analizirala prometne nesreče v Sloveniji od leta 2000 do 2014, po posameznih regijah, po vrsti ceste, po vrsti udeležencev in odvisnosti od vpliva alkohola.

Podatke sem dobila na naslednjih straneh:
* Statistični urad RS: http://pxweb.stat.si/pxweb/Database/Ekonomsko/22_transport/07_22220_cestno_prometne_nesrece/07_22220_cestno_prometne_nesrece.asp
* Ministrstvo za notranje zadeve: http://www.policija.si/index.php/statistika/prometna-varnost

Tu so podatki na voljo v oblikah html, csv, txt, xls,..

Cilji projekta so:
* na podlagi podatkov bi rada ugotovila, na katerih lokacijah je največ nesreč, kdo jih povzroči in kakšna je odvisnost nesreč od alkohola.


## Program

Glavni program in poročilo se nahajata v datoteki `projekt.Rmd`. Ko ga prevedemo,
se izvedejo programi, ki ustrezajo drugi, tretji in četrti fazi projekta:

* obdelava, uvoz in čiščenje podatkov: `uvoz/uvoz.r`
* analiza in vizualizacija podatkov: `vizualizacija/vizualizacija.r`
* napredna analiza podatkov: `analiza/analiza.r`

Vnaprej pripravljene funkcije se nahajajo v datotekah v mapi `lib/`. Podatkovni
viri so v mapi `podatki/`. Zemljevidi v obliki SHP, ki jih program pobere, se
shranijo v mapo `../zemljevidi/` (torej izven mape projekta).

## Spletni vmesnik

Spletni vmesnik se nahaja v datotekah v mapi `shiny/`. Poženemo ga tako, da v
RStudiu odpremo datoteko `server.R` ali `ui.R` ter kliknemo na gumb *Run App*.
Alternativno ga lahko poženemo tudi tako, da poženemo program `shiny.r`.

## Potrebni paketi za R

Za zagon tega vzorca je potrebno namestiti sledeče pakete za R:

* `knitr` - za izdelovanje poročila
* `rmarkdown` - za prevajanje poročila v obliki RMarkdown
* `shiny` - za prikaz spletnega vmesnika
* `DT` - za prikaz interaktivne tabele
* `maptools` - za uvoz zemljevidov
* `sp` - za delo z zemljevidi
* `digest` - za zgoščevalne funkcije (uporabljajo se za shranjevanje zemljevidov)
* `httr` - za pobiranje spletnih strani
* `XML` - za branje spletnih strani
* `extrafont` - za pravilen prikaz šumnikov (neobvezno)
