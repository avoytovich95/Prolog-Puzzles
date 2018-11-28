compress([I], X) :-
    X = [I].
compress([H|T], X) :-
    write(H), write(" "), write(T), write("\n"),
    nth0(0, T, First),
    H == First,
    compress(T, NX),
    X = NX.
compress([H|T], X) :-
    write(H), write(" "), write(T), write("\n"),
    compress(T, NX),
    append([H], NX, FX),
    X = FX.