duplicate([], []).
duplicate([H|T], X) :-
    duplicate(T, XS),
    append([H,H], XS, X).
