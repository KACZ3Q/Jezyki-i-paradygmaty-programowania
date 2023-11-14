zatrudnienie(adolf, malarz, wolksvagen, duza_firma, 1945).
zatrudnienie(karol, pawlowski, watykant, srednia_firma, 2137).
zatrudnienie(juliusz, slowacki, kremuuuwka, srednia_firma, 1200).
zatrudnienie(dawid, kamil, jasper, mala_firma, 690).

zadowolona(X) :-
    zatrudnienie(X, _, _, Y, Z),
    Y = mala_firma,
    Z > 2500.

sprawdz() :-
    zatrudnienie(X, _, _, Y, Z),
    Y = duza_firma,
    Z < 1500,
    print(X).
