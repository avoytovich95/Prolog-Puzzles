but_last([_], []).
but_last([H|T], [H|X]) :-
    but_last(T, X).
