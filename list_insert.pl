list_del(X,[X|T],T).
list_del(X,[Y|T1],[Y|T2]):- list_del(X,T1,T2).


list_insert(X,L,R):- list_del(X,R,L).
