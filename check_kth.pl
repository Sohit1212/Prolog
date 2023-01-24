
check_kth(X,[H|T],1):- X is H.

check_kth(X,[H|T],K):-
	Knew is K-1,
	check_kth(X,T,Knew).
