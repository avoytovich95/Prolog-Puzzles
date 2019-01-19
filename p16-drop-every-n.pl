% P16 (**) Drop every N'th element from a list.
%   Example:
%   ?- drop([a,b,c,d,e,f,g,h,i,k],3,X).
%   X = [a,b,d,e,g,h,k]

drop(List, N, X) :-
    drop(List, 1, N, X).

drop([_], Max, Max, []).
drop([_|T], Max, Max, X) :-
    drop(T, 1, Max, X).
drop([H|T], N, Max, [H|X]) :-
    NN is N + 1,
    drop(T, NN, Max, X).
