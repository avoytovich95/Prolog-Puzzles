pack([], []).
pack([H|T], [X|XS]) :-
    transfer(T, [H], Y, X),
    pack(Y, XS).

transfer([H|T], [H|XS], X, Y) :-
    append([H|XS], [H], List),
    transfer(T, List, X, Y).
transfer(List, X, List, X).
