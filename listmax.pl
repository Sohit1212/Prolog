accmax([],A,A).
accmax([X|T],A,MAX):-
	(X>A,accmax(T,X,MAX));
	accmax(T,A,MAX).

listmax([H|L],MAX):- accmax(L,H,MAX).
