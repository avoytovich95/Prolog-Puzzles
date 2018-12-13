split([H|T], 1, [H], T).
split([H|T], Index, [H|L1], L2) :-
    NIndex is Index - 1,
    split(T, NIndex, L1, L2).
