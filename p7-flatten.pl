flatten([E], X) :-
    not(is_list(E)),
    X = [E].
flatten(E, X) :-
    not(is_list(E)),
    X = [E].
flatten([], X) :-
    X = [].
flatten([H|T], X) :-
    flatten(H, NH),
    flatten(T, NT),
    append(NH, NT, Flat),
    X = Flat.
