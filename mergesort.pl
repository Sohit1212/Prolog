mergesort([],[]).
mergesort([A],[A]).
mergesort([A,B|R],S):-
	split([A,B|R],L1,L2),
	mergesort(L1,S1),
	mergesort(L2,S2),
	merge(S1,S2,S).

split([],[],[]).
split([A],[A],[]).
split([A,B|R],[A|R1],[B|R2]):-
	split(R,R1,R2).

merge(A,[],A).
merge([],B,B).
merge([H1|S1],[H2|S2],[H1|S]):- 
	H1 =< H2,
	merge(S1,[H2|S2],S).

merge([H1|S1],[H2|S2],[H2|S]):- 
	H1 > H2,
	merge([H1|S1],S2,S).
