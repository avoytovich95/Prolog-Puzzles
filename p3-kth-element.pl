kth_element(List, 1, X) :-
    nth0(0, List, Element),
    X = Element.
kth_element([_|T], K, X) :-
    NK is K - 1,
    kth_element(T, NK, X).
    