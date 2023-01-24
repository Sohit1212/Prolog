append([],Y,0,Y).
append([H|X],[H|L],N,Y):-
	Nnew is N-1,
	append(X,L,Nnew,Y).

split(X,Y,L,N):- append(X,L,N,Y).
