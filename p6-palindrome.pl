:- ['helper-preds/but-last.pl'].

palindrome([_]).
palindrome([X,X]).
palindrome([H|T]) :-
    last(T, L),
    H == L,
    but_last(T, NX),
    palindrome(NX).
