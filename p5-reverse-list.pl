reverse_list([], []).
reverse_list([H|T], X) :-
    reverse_list(T, NL),
    append(NL, [H], X).