acc_sum([],A,A).
acc_sum([H|T],A,X):-
	Anew is A + H,
	acc_sum(T,Anew,X).

list_sum([H|L],X):- acc_sum(L,H,X).
