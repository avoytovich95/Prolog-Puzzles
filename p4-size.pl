list_size([], 0).
list_size([_|T], X) :-
    list_size(T, NX),
    X is NX + 1.
