% P24 (*) Lotto: Draw N different random numbers from the set 1..M.
%   The selected numbers shall be put into a result list.
%   Example:
%   ?- rnd_select(6,49,L).
%   L = [23,1,17,33,21,37]

:- [
    'p22-range.pl', 
    'p23-rnd-select.pl'
].

lotto(I, Max, X) :-
    range(1, Max, Bin),
    rnd_select(Bin, I, X).