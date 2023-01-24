
foo([H|[]],[]).
foo([H|X],[H|Y]):-
	foo(X,Y).
toptail([H|X],Y):- foo(X,Y).
	

