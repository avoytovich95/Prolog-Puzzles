% P25 (*) Generate a random permutation of the elements of a list.
%   Example:
%   ?- rnd_permu([a,b,c,d,e,f],L).
%   L = [b,a,d,c,e,f]

:- ['p23-rnd-select.pl'].

rnd_permu(List, X) :-
    length(List, Len),
    rnd_select(List, Len, X).
    