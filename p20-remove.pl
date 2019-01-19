% P20 (*) Remove the K'th element from a list.
%   Example:
%   ?- remove_at(X,[a,b,c,d],2,R).
%   X = b
%   R = [a,c,d]

remove([H|T], 1, H, T).
remove([H|T], K, X, [H|R]) :-
    NK is K - 1,
    remove(T, NK, X, R).
