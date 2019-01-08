second_last([I, _], I).
second_last([_|T], X) :-
    second_last(T, X).
    