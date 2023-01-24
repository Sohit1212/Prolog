elem(N2,[N2],N2).
elem(N,[N|X],N2):-
	Nnew is N+1,
	Nnew =< N2,
	elem(Nnew,X,N2).

elem_bw(N1,N2,X):-elem(N1,X,N2).
