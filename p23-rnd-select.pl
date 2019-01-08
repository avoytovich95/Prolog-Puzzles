:- ['p20-remove.pl'].

rnd_select(_, 0, []).
rnd_select(List, I, [X|R]) :-
    length(List, Len),
    Max is Len + 1,
    random(1, Max, Ran),
    remove(List, Ran, X, Rest),
    NI is I - 1,
    rnd_select(Rest, NI, R).
