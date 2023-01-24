ordered([],_).
ordered([H|L],A):- 
	A =< H, ordered(L,H). 
ordered([H|L]):- ordered(L,H).
