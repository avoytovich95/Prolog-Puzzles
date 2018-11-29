uncompress([], []).
uncompress([H|T], X) :-
    uncompress_elem(H, XS),
    uncompress(T, NX),
    append(XS, NX, X).

uncompress_elem(I, [I]) :- not(is_list(I)).
uncompress_elem([0,_],[]).
uncompress_elem([S,I], [I|XS]) :-
    NS is S - 1,
    uncompress_elem([NS,I], XS).
