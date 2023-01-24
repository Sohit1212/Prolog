append([],L2,L2).
append([H1|L1],L2,[H1|L3]):-
	append(L1,L2,L3).

listprefix(P,L):- append(P,_,L).
listsuffix(S,L):- append(_,S,L).
sublist(Sub,L):- listsuffix(S,L), listprefix(Sub,S).
