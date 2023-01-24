append([],L,L).

append([H1|L1],L2,[H1|L3]):-
	append(L1,L2,L3).

listsuffix(S,L):- append(_,S,L).
