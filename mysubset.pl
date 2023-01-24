member(X,[X|_]).
member(X,[_|T]):- member(X,T).

mysubset([],T).
mysubset([X|Tx],T):-
	member(X,T),
	mysubset(Tx,T).
