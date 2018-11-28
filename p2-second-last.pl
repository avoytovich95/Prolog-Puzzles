second_last([_|T], X) :-
    length(T, Size),
    Size == 2,
    nth0(0, T, Element),
    X = Element.
second_last([_|T], X) :-
    second_last(T, X).
    