list_member(X,[X|T]).
list_member(X,[Y|T]):- list_member(X,T).

list_intersection([],L2,[]).
list_intersection([H|L1],L2,[H|X]):-
	list_member(H,L2), list_intersection(L1,L2,X).
list_intersection([H|L1],L2,X):-	
	\+ list_member(H,L2),list_intersection(L1,L2,X).

