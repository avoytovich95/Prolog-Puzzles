% P12 (**) Decode a run-length encoded list.
%   Given a run-length code list generated as specified in problem P11. Construct its uncompressed version.

uncompress([], []).
uncompress([H|T], X) :-
    uncompress_elem(H, XS),
    uncompress(T, NX),
    append(XS, NX, X).

uncompress_elem([0,_],[]).
uncompress_elem(I, [I]) :- 
    \+is_list(I).
uncompress_elem([S,I], [I|XS]) :-
    NS is S - 1,
    uncompress_elem([NS,I], XS).
