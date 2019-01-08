combination(1, List, [Elem]) :-
    get_next(List, Elem, _).
combination(N, List, [Elem|X]) :-
    NN is N - 1,
    get_next(List, Elem, Rest),
    combination(NN, Rest, X).

get_next([H|T], H, T).
get_next([H|T], X, [H|R]) :-
    get_next(T, X, R).