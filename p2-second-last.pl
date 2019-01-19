% P02 (*) Find the last but one element of a list.

second_last([I, _], I).
second_last([_|T], X) :-
    second_last(T, X).
    