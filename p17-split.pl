% P17 (*) Split a list into two parts; the length of the first part is given.
%   Do not use any predefined predicates.
%
%   Example:
%   ?- split([a,b,c,d,e,f,g,h,i,k],3,L1,L2).
%   L1 = [a,b,c]
%   L2 = [d,e,f,g,h,i,k]

split([H|T], 1, [H], T).
split([H|T], Index, [H|L1], L2) :-
    NIndex is Index - 1,
    split(T, NIndex, L1, L2).
