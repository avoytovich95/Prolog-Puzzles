compress([I], X) :-
    X = [I].
compress([H|T], X) :-
    nth0(0, T, First),
    H == First,
    compress(T, X).
compress([H|T], X) :-
    compress(T, NX),
    append([H], NX, X).