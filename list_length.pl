list_length([],N):- N is 0 .
list_length([HEAD|TAIL],N):-
	list_length(TAIL,N1), 
	N is 1+N1.
