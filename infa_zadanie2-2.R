## KB:
# To jest aż za skomplikowane i za dobre rozwiązanie:)
# Chodziło mi o łopatologiczne operacje arytmetyczne "na twardo"
# To jest idealne rozwiązanie.

#JA: to jest ogólnie przetłumaczony skrypt z php, który oblicza ilosc dni ktore pozostałych do końca promki na samochody renault z rocznika 2k18
#moj tate robil niedawno baner z takim odliczankiem, wiec to nie jest moj autorski skrypt tylko tlumaczenie z php no i zamiana dni/godziny

paste ("Za ile godzin wreszcie skoncza sie te studia?")
today <- Sys.Date()
koniec_tego_koszmaru <- as.Date("2021-06-30")

hours <- as.numeric(difftime(koniec_tego_koszmaru, today), units="hours")
dodac <- as.numeric(difftime(strptime("23:59", format = "%H:%M"), 
                             strptime("23:59", format = "%H:%M")), units="hours")
print ("Czy kiblowałeś, jeśli tak to podaj ile to bylo, w latach?")

lata_kiblowania <- c(0) #w miejsce 0 mozna wpisac lata jakie sie kiblowało czy coś tam !!PYTANKO!! Jak zrobic, zeby to uzytkownik mogl to wpisac, nie muszac wchodzic w kod zrodlowy?

hours <- hours + dodac + (lata_kiblowania * 8760)

paste("Ten koszmar skonczy sie za...", hours, "godzin")

