% Finds and returns the last element of the list

last([E], E).
last([_|T], X) :-
    last(T, X).
