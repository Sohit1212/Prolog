count(X,[],[],0).
count(X,[X|T],T1,N):-
	count(X,T,T1,Nnew),
	N is Nnew+1.
count(X,[Y|T],[Y|T],0):- X \= Y.

encode([],[]).
encode([H|T],[[N|H]|X]):-
	count(H,T,T1,Nnew),
	N is Nnew+1,
	encode(T1,X).
