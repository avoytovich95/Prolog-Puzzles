compress([I], [I]).
compress([H|[SH|T]], X) :-
    H == SH,
    compress([SH|T], X).
compress([H|T], [H|X]) :-
    compress(T, X).