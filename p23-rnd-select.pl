% P23 (**) Extract a given number of randomly selected elements from a list.
%   The selected items shall be put into a result list.
%   Example:
%   ?- rnd_select([a,b,c,d,e,f,g,h],3,L).
%   L = [e,d,a]

:- ['p20-remove.pl'].

rnd_select(_, 0, []).
rnd_select(List, I, [X|R]) :-
    length(List, Len),
    Max is Len + 1,
    random(1, Max, Ran),
    remove(List, Ran, X, Rest),
    NI is I - 1,
    rnd_select(Rest, NI, R).
