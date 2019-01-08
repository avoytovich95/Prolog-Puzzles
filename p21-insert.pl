insert(Elem, List, 1, [Elem|List]).
insert(Elem, [H|T], Pos, [H|X]) :-
    NPos is Pos - 1,
    insert(Elem, T, NPos, X).
