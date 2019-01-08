:- ['p26-combination'].

group3(List, G1, G2, G3) :-
    take_group(2, List, G1, R1),
    take_group(3, R1, G2, R2),
    take_group(4, R2, G3, _).

take_group(1, List, [Elem], R) :-
    get_next(List, Elem, R).
take_group(N, List, [Elem|X], R) :-
    NN is N - 1,
    get_next(List, Elem, Rest),
    take_group(NN, Rest, X, R).