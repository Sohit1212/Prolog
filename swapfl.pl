check([A|[]],[B|[]],B,A).
check([H1|T1],[H1|T2],X,Y):-
	check(T1,T2,X,Y).

swapfl([H1|T1],[H2|T2]):-
	check(T1,T2,H1,H2).
