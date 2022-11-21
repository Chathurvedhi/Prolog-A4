len([],0).
len([_ | T], N) :- len(T,M), N is M+1.

my_append([],Q,Q).
my_append([H | P], Q, [H | R]) :- my_append(P, Q, R).
my_prefix(X,Z) :- my_append(X,Y,Z).
suffix(Y,Z) :- my_append(X,Y,Z).

appen2([H | P], Q, [H | R]) :- appen2(P, Q, R).
appen2([],Q,Q).

setup(q(X,X)).
leave(A,q([A|X],Y),q(X,Y)).
enter(A,q(X,[A|Y]),q(X,Y)).
wrapup(q([],[])).

max_element(X, Y, X) :- X > Y, !.
max_element(X, Y, Y) :- X =< Y.

eval(plus(A,B),C) :- eval(A,VA), eval(B,VB), C is VA + VB, !.
eval(mult(A,B),C) :- eval(A,VA), eval(B,VB), C is VA * VB, !.
eval(A,A).

checkl([A,B,A],B,0).
