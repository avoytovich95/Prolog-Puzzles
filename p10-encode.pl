% P10 (*) Run-length encoding of a list.
%   Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as terms [N,E] where N is the number of duplicates of the element E.
%
%   Example:
%   ?- encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
%   X = [[4,a],[1,b],[2,c],[2,a],[1,d][4,e]]


:- ['p9-pack.pl'].

encode(List, X) :-
    pack(List, Packed),
    encode_list(Packed, X).

encode_list([], []).
encode_list([H|T], [X|XS]) :-
    count(H, X),
    encode_list(T, XS).

count([H|T], [X, H]) :-
    length([H|T], X).