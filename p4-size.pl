% list_size([], X) :- X is X.
% list_size([], X) :-
%     var(X),
%     X is 0.
% list_size([_], X) :-
%     NX is X + 1,
%     write("Third pred: "), write(NX), write("\n"),
%     list_size([], NX).
% list_size([_|T], X) :-
%     not(var(X)),
%     NX is X + 1,
%     write("Second pred: "), write(NX), write("\n"),
%     list_size(T, NX).
% list_size(List, X):-
%     var(X),
%     NX is 0,
%     write("First pred: "), write(NX), write("\n"),
%     list_size(List, NX).

list_size([], X) :-
    X is 0.
list_size([_|T], X) :-
    list_size(T, NX),
    X is NX + 1.
