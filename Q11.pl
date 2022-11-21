my_flatten([],[]).
%confirm if u can use append for assignment
my_flatten([H|T],L) :- my_flatten(H,L1), my_flatten(T,L2), append(L1,L2,L),!.
my_flatten(H,[H]) :- atomic(H),!.