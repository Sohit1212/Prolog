count(X,[],[],0).
count(X,[X|T],T1,N):- count(X,T,T1,Nnew), N is Nnew+1.
count(X,[Y|T],[Y|T],0):- X \= Y.

encode([],A,A).
encode([H|T],A,X):-
	count(H,T,T1,N),
	Nnew is N+1,
	((Nnew =\= 1, encode(T1,[[Nnew,H]|A],X));(Nnew =:= 1, encode(T1,[H|A],X))).

reverse([],A,A).
reverse([H|T],A,X):- reverse(T,[H|A],X).
encode2(L,X):- 
	encode(L,[],Y),
	reverse(Y,[],X).
