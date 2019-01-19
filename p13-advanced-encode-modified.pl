% P13 (**) Run-length encoding of a list (direct solution).
%   Implement the so-called run-length encoding data compression method directly. I.e. don't explicitly create the sublists containing the duplicates, as 
%   in problem P09, but only count them. As in problem P11, simplify the result list by replacing the singleton terms [1,X] by X.
%
%   Example:
%   ?- encode_direct([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
%   X = [[4,a],b,[2,c],[2,a],d,[4,e]]

advanced_encode([], []).
advanced_encode([H|T], [X|XS]) :-
    transfer(T, H, Y, X),
    advanced_encode(Y, XS).

transfer([H|T], H, X, Y) :-
    transfer(T, [2, H], X, Y).
transfer([H|T], [XS, H], X, Y) :-
    S is XS + 1,
    transfer(T, [S, H], X, Y).
transfer(List, X, List, X).