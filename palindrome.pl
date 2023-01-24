
acc_rev([],A,A).
acc_rev([H|T],A,X):-
	acc_rev(T,[H|A],X).

list_rev(L,X):- acc_rev(L,[],X).
/*
check([],[]).
check([H|T1],[H|T2]):-
	check(T1,T2).
*/
palindrome(L):-
	list_rev(L,L).
	% check(L,X).
