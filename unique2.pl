list_del(X,[],[]).
list_del(X,[X|T],K):-
	list_del(X,T,K).
list_del(X,[Y|T],[Y|K]):-
	list_del(X,T,K).

unique([],[]).
unique([H|L],[H|X]):-
	list_del(H,L,K),
	unique(K,X).

