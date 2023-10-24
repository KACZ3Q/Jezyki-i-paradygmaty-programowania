osoba(nikodem, andrzej, ewa, mezczyzna, 22).
osoba(andrzej, jan, julia, mezczyzna, 52).
osoba(ewa, mieczyslaw, zofia, kobieta, 52).
osoba(mateusz, tadeusz, dorota, mezczyzna, 29).
osoba(tadeusz, bartek, basia, mezczyzna, 56).
osoba(dorota, mieczyslaw, zofia, kobieta, 54).
osoba(marek, mieczyslaw, zofia, mezczyzna, 60).
osoba(sabina, pawel, alicja, kobieta, 21).
osoba(pawel, zdzislaw, zofia, mezczyzna, 50).
osoba(alicja, kamil, beata, kobieta, 44).

rodzenstwo(X,Y):-
     osoba(X,A,B,_,_),
     osoba(Y,A,B,_,_),
     X\=Y.

rodzic(X,Y):-
    osoba(Y,X,_,_,_);osoba(Y,_,X,_,_).

brat(X,Y):-
    rodzenstwo(X,Y),
    osoba(X,_,_,mezczyzna,_).
siostra(X,Y):-
    rodzenstwo(X,Y),
    osoba(X,_,_,kobieta,_).

wujek(X,Y):-
    brat(X,Z),
    rodzic(Z,Y).

ciocia(X,Y):-
    siostra(X,Z),
    rodzic(Z,Y).

kuzyn(X,Y):-
    rodzic(A,X),
    rodzic(B,Y),
    rodzenstwo(A,B),
    osoba(X,_,_,mezczyzna,_).

kuzynka(X,Y):-
    rodzic(A,X),
    rodzic(B,Y),
    rodzenstwo(A,B),
    osoba(X,_,_,kobieta,_).
