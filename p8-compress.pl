% P08 (**) Eliminate consecutive duplicates of list elements.
%   If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.
%
%   Example:
%   ?- compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
%   X = [a,b,c,a,d,e]

compress([I], [I]).
compress([H|[SH|T]], X) :-
    H == SH,
    compress([SH|T], X).
compress([H|T], [H|X]) :-
    compress(T, X).