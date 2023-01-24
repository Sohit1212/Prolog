list_divide([],[],[],_).

list_divide([H|L],[H|X],Y,0):-
	list_divide(L,X,Y,1).

list_divide([H|L],X,[H|Y],1):-
	list_divide(L,X,Y,0).

list_divide(L,X,Y):- list_divide(L,X,Y,0).

