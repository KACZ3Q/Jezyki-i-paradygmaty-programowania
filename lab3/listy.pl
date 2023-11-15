%zad2%

pisz([]).
pisz([H|T]):-
    write(H),
    write(' '),
    pisz(T).

%zad3%

nalezy(E,[E|_]).
nalezy(E,[_|Tail]):-
    nalezy(E,Tail).

%zad4%

dlugosc([],0).
dlugosc([_|Tail],X):-
    dlugosc(Tail,X1),
    X is X1+1.

%zad5%

lacz([],[],[]).
lacz([],X,X).
lacz([X|T1],L2,[X,L3]):-
    lacz(T1,L2,L3).

%zad6%

dodaj(X,L,[X|L]).

%zad7%

usun(X,[X|R],R).
usun(X,[Y|Tail],[Y|R]):-
    usun(X,Tail,R).

%zad8%

ostatni([X],X).
ostatni([_|T],R):-
    ostatni(T,R).
