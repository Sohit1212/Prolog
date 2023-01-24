list_delete(X,[X],[]).
list_delete(X,[X|TAIL],TAIL).
list_delete(X,[Y|TAIL],[Y|L]):-
	list_delete(X,TAIL,L).
