kth_element([H|_], 1, H).
kth_element([_|T], K, X) :-
    NK is K - 1,
    kth_element(T, NK, X).
    