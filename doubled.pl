len([],0).
len([H|T],N):- len(T,Nnew), N is Nnew+1.

append([],L2,L2,0).
append([H1|T1],L2,[H1|T3],N):-
	Nnew is N-1,
	append(T1,L2,T3,Nnew).

check([],[]).
check([H1|T1], [H1|T2]):-
	check(T1,T2).

doubled(L):-
	len(L,N),
	C is N/2,
	append(X,Y,L,C),
	check(X,Y).
