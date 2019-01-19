% P11 (*) Modified run-length encoding.
%   Modify the result of problem P10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as [N,E] terms.
%
%   Example:
%   ?- encode_modified([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
%   X = [[4,a],b,[2,c],[2,a],d,[4,e]]

:- ['p9-pack.pl'].

encode_modified(List, X) :-
    pack(List, Packed),
    encode_list(Packed, X).

encode_list([], []).
encode_list([H|T], [X|XS]) :-
    count(H, X),
    encode_list(T, XS).

count([I], I).
count([H|T], [X, H]) :-
    length([H|T], X).
