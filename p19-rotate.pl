:- ['helper-preds/but-last.pl'].

rotate(List, 0, List).
rotate([H|T], Dir, X) :-
    Dir > 0,
    NDir is Dir - 1,
    append(T, [H], NX),
    rotate(NX, NDir, X).
rotate(List, Dir, X) :-
    Dir < 0,
    NDir is Dir + 1,
    last(List, L),
    but_last(List, NList),
    rotate([L|NList], NDir, X).
    
