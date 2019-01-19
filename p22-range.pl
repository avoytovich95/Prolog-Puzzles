% P22 (*) Create a list containing all integers within a given range.
%   Example:
%   ?- range(4,9,L).
%   L = [4,5,6,7,8,9]

range(Z, Z, [Z]).
range(A, Z, [A|X]) :-
    A < Z,
    I is A + 1,
    range(I, Z, X).