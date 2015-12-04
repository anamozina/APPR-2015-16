# 2. faza: Uvoz podatkov

# Funkcija, ki uvozi podatke iz datoteke druzine.csv
uvozi.nesrece.mesec <- function() {
  return(read.csv2("podatki/nesrece-mesec.csv", sep = ";", as.is = TRUE,
                    skip = 4, fileEncoding = "Windows-1250"))
}

# Zapišimo podatke v razpredelnico druzine.
mesec <- uvozi.nesrece.mesec()

#obcine <- uvozi.obcine()

# Če bi imeli več funkcij za uvoz in nekaterih npr. še ne bi
# potrebovali v 3. fazi, bi bilo smiselno funkcije dati v svojo
# datoteko, tukaj pa bi klicali tiste, ki jih potrebujemo v
# 2. fazi. Seveda bi morali ustrezno datoteko uvoziti v prihodnjih
# fazah.