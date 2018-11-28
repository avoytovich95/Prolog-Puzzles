:- use_module(library(dialect/hprolog), [take/3]).

palindrome([_]).
palindrome([X,X]).
palindrome([H|T]) :-
    length(T, X),
    last(T, L),
    H == L,
    NX is X - 1,
    take(NX, T, Center),
    palindrome(Center).
