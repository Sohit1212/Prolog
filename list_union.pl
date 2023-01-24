list_member(X,[X|T]).
list_member(X,[Y|T]):- list_member(X,T).


list_union([],L2,L2).

list_union([H|L1],L2,X):-
	list_member(H,L2), list_union(L1,L2,X).
list_union([H|L1],L2,[H|X]):-
	\+ list_member(H,L2), list_union(L1,L2,X).

