:- ['p9-pack.pl'].

encode_modified(List, X) :-
    pack(List, Packed),
    encode_list(Packed, X).

encode_list([], []).
encode_list([H|T], [X|XS]) :-
    count(H, X),
    encode_list(T, XS).

count([I], I).
count([H|T], [X, H]) :-
    length([H|T], X).
