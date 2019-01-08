flatten(E, [E]) :-
    \+ is_list(E).
flatten([], []).
flatten([H|T], X) :-
    flatten(H, NH),
    flatten(T, NT),
    append(NH, NT, X).
