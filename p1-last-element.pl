% P01 (*) Find the last element of a list.
%   Example:
%   ?- my_last(X,[a,b,c,d]).
%   X = d

last([E], E).
last([_|T], X) :-
    last(T, X).
