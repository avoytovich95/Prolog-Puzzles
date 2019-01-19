% P21 (*) Insert an element at a given position into a list.
%   Example:
%   ?- insert_at(alfa,[a,b,c,d],2,L).
%   L = [a,alfa,b,c,d]

insert(Elem, List, 1, [Elem|List]).
insert(Elem, [H|T], Pos, [H|X]) :-
    NPos is Pos - 1,
    insert(Elem, T, NPos, X).
