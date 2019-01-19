% P15 (**) Duplicate the elements of a list a given number of times.
%   Example:
%   ?- dupli([a,b,c],3,X).
%   X = [a,a,a,b,b,b,c,c,c]
%
%   What are the results of the goal:
%   ?- dupli(X,3,Y).

duplicate_n([], _, []).
duplicate_n([H|T], N, X) :-
    duplicate_n(T, N, XS),
    multiply(H, N, E),
    append(E, XS, X).

multiply(E, 1, [E]).
multiply(E, N, [E|XS]) :-
    NS is N - 1,
    multiply(E, NS, XS).