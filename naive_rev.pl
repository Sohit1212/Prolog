append([],L2,L2).
append([H1|L1],L2,[H1|X]):-
	append(L1,L2,X).


naive_rev([],[]).
naive_rev([H|L],X):- 
	naive_rev(L,Xnew), append(Xnew,[H],X).
