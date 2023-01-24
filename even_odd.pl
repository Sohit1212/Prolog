list_len([],0).
list_len([H|T],N):-
	list_len(T,Nnew),
	N is Nnew+1.

even_odd(L):-
	list_len(L,N),
	1 is mod(N,2).

even([]).
even([H|T]):- odd(T).

odd([_]).
odd([H|T]):- even(T).
