% P06 (*) Find out whether a list is a palindrome.
%   A palindrome can be read forward or backward; e.g. [x,a,m,a,x].

:- ['helper-preds/but-last.pl'].

palindrome([_]).
palindrome([X,X]).
palindrome([H|T]) :-
    last(T, L),
    H == L,
    but_last(T, NX),
    palindrome(NX).
