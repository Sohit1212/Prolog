del_con(X,[Y|T],[Y|T]):- X \= Y.
del_con(X,[X|T],L):- del_con(X,T,L).
del_con(X,[],[]).

compress([],[]).
compress([H|T],[H|X]):-
	del_con(H,T,L),
	duplicates(L,X).
