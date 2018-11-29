last([E], E).
last([_|T], X) :-
    last(T, X).
