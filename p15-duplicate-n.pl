duplicate_n([], _, []).
duplicate_n([H|T], N, X) :-
    duplicate_n(T, N, XS),
    multiply(H, N, E),
    append(E, XS, X).

multiply(E, 1, [E]).
multiply(E, N, [E|XS]) :-
    NS is N - 1,
    multiply(E, NS, XS).