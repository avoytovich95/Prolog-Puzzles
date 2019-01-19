% P09 (**) Pack consecutive duplicates of list elements into sublists.
%   If a list contains repeated elements they should be placed in separate sublists.
%
%   Example:
%   ?- pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
%   X = [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]

pack([], []).
pack([H|T], [X|XS]) :-
    transfer(T, [H], Y, X),
    pack(Y, XS).

transfer([H|T], [H|XS], X, Y) :-
    append([H|XS], [H], List),
    transfer(T, List, X, Y).
transfer(List, X, List, X).
