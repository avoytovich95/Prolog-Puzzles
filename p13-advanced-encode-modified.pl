advanced_encode([], []).
advanced_encode([H|T], [X|XS]) :-
    transfer(T, H, Y, X),
    advanced_encode(Y, XS).

transfer([H|T], H, X, Y) :-
    write(T), write("\n"),
    transfer(T, [2, H], X, Y).
transfer([H|T], [XS, H], X, Y) :-
    S is XS + 1,
    write(XS), write(" "), write(S), write("\n"),
    transfer(T, [S, H], X, Y).
transfer(List, X, List, X).