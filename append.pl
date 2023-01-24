append([],L2,L2).
append([H|L1],L2,[H|X]):-
	append(L1,L2,X).
