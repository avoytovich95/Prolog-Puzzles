:- ['p23-rnd-select.pl'].

rnd_permu(List, X) :-
    length(List, Len),
    rnd_select(List, Len, X).
    