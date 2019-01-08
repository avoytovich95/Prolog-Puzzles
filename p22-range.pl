range(Z, Z, [Z]).
range(A, Z, [A|X]) :-
    A < Z,
    I is A + 1,
    range(I, Z, X).