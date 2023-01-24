
combine1([],[],[]).
combine1([A|Ta],[B|Tb],[A,B|Tx]):-
	combine1(Ta,Tb,Tx).
combine2([],[],[]).
combine2([A|Ta],[B|Tb],[[A,B]|Tx]):-
	combine2(Ta,Tb,Tx).
combine3([],[],[]).
combine3([A|Ta],[B|Tb],[join(A,B)|Tx]):-
	combine3(Ta,Tb,Tx).

