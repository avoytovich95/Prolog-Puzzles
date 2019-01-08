remove([H|T], 1, H, T).
remove([H|T], K, X, [H|R]) :-
    NK is K - 1,
    remove(T, NK, X, R).
