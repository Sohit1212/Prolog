islist([]).
islist([_|Xs]):- islist(Xs).

add(0,X,[]).
add(N,X,[X|Y]):-
	Nnew is N-1,
	Nnew >= 0,
	add(Nnew,X,Y).

append([],L2,L2).
append([H|L1],L2,[H|L3]):- append(L1,L2,L3).

decode([],[]).
decode([[N,X]|T],Y):-
	decode(T,Ynew),
	add(N,X,Z),
	append(Z,Ynew,Y).

decode([X|T],[X|Y]):-
	\+ islist(X),
	decode(T,Y).
