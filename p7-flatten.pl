% P07 (**) Flatten a nested list structure.
%   Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).
%
%   Example:
%   ?- my_flatten([a, [b, [c, d], e]], X).
%   X = [a, b, c, d, e]

flatten(E, [E]) :-
    \+ is_list(E).
flatten([], []).
flatten([H|T], X) :-
    flatten(H, NH),
    flatten(T, NT),
    append(NH, NT, X).
