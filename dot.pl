
dot([],[],0).

dot([H1|T1],[H2|T2],A):-
	dot(T1,T2,X),
	A is X+H1*H2.

