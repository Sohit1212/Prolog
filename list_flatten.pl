islist([]).
islist([_|Xs]) :- islist(Xs).

append([],L2,L2).
append([H|L1],L2,[H|L3]):- append(L1,L2,L3).

flatten(X,[X]):- \+ islist(X).
flatten([],[]).
flatten([H|T],Z):-
	flatten(H,X), flatten(T,Y),
	append(X,Y,Z).

