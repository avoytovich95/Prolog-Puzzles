reverse_list([], X) :- 
    X = [].
reverse_list([I], X) :-
    X = [I].
reverse_list([H|T], X) :-
    reverse_list(T, NL),
    append(NL, [H], NX),
    X = NX.