del(X,[X|T],T).
del(X,[Y|T1],[Y|T2]):- del(X,T1,T2).

list_permu([],[]).
list_permu(L,[X|P]):-
	del(X,L,L1),  list_permu(L1,P).
