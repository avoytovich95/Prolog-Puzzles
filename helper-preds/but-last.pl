% A simple predicate to return the contents of a list and
% exclude the last element
but_last([_], []).
but_last([H|T], [H|X]) :-
    but_last(T, X).
