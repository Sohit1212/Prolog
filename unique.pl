list_member(X,[X|T]).
list_member(X,[Y|T]):- list_member(X,T).

acc_unique([],A,A).
acc_unique([H|L],A,X):-
	(list_member(H,A), acc_unique(L,A,X));
	(acc_unique(L,[H|A],X)).

unique(L,X):- acc_unique(L,[],X),

