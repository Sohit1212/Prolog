append([],L2,L2).
append([H|L1],L2,[H|L3]):- append(L1,L2,L3).

left_shift(L,Z):-
	append(X,Y,L),
	append(Y,X,Z).

reverse([],A,A).
reverse([H|T],A,L):- reverse(T,[H|A],L).

right_shift(L,Z):-
	reverse(L,[],L1),
	append(A,B,L1),
	reverse(A,[],X), reverse(B,[],Y),
	append(X,Y,Z).


