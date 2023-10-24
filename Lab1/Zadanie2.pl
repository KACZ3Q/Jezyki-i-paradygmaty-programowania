osoba(olek, sport, 28).
osoba(kasia, filmy, 22).
osoba(arek, gry, 19).
osoba(gosia, ksiazki, 21).
osoba(marek, gotowanie, 22).

starszy(X,Y):-
    osoba(X, _, A),
    osoba(Y, _, B),
    X\=Y,
    A>=B.
