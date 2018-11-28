last([E], X) :-
    X is E.
last([_|T], X) :-
    last(T, X).
