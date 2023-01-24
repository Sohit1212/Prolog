list_concat([],L,L).
list_concat([X|L1],L2,[X|L3]):-
	list_concat(L1,L2,L3).
