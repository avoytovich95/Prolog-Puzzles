% P03 (*) Find the K'th element of a list.
%   The first element in the list is number 1.
%   Example:
%   ?- element_at(X,[a,b,c,d,e],3).
%   X = c

kth_element([H|_], 1, H).
kth_element([_|T], K, X) :-
    NK is K - 1,
    kth_element(T, NK, X).
    