second_last([_|T], X) :-
    length(T, Size),
    Size == 2,
    nth0(0, T, X).
second_last([_|T], X) :-
    second_last(T, X).
    