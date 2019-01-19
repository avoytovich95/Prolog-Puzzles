% P18 (**) Extract a slice from a list.
%   Given two indices, I and K, the slice is the list containing the elements between the I'th and K'th element of the original list (both limits included). Start counting the elements with 1.
%
%   Example:
%   ?- slice([a,b,c,d,e,f,g,h,i,k],3,7,L).
%   X = [c,d,e,f,g]

:- ['helper-preds/but-last.pl'].

slice(List, 1, 1, List).
slice([_|T], I, 1, X) :-
    NI is I - 1,
    slice(T, NI, 1, X).
slice(List, 1, K, X) :-
    NK is K - 1,
    but_last(List, NList),
    slice(NList, 1, NK, X).
slice([_|T], I, K, X) :-
    NI is I - 1,
    NK is K - 1,
    but_last(T, NList),
    slice(NList, NI, NK, X).
