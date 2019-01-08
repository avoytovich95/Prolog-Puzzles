:- [
    'p22-range.pl', 
    'p23-rnd-select.pl'
].

lotto(I, Max, X) :-
    range(1, Max, Bin),
    rnd_select(Bin, I, X).