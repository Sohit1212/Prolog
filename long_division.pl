degree([],-1).
degree([H|T],N):- degree(T,Nnew), N is Nnew+1.
/*
foo1([],0).
foo1([H|T],0):- H =\= 0.
foo1([H|T],D):-
	H =:= 0,
	foo1(T,Dnew),
	D is Dnew+1.

degree(X,N):-
	len(X,Len),
	foo1(X,D),
	N is Len-D-1.

left_shift([H|T],A):-
	H =:= 0,
	left_shift(T,A).

left_shift([H|T],[H|T]):-
	H =\= 0.
*/

subtract([],[],[]).
subtract([Hn|N],[],[Hn|Z]):- subtract(N,[],Z).
subtract([Hn|N],[Hd|D],[H|Z]):-
	H is Hn-Hd,
	subtract(N,D,Z).

multiply([],X,[]).
multiply([H|D],X,[H1|Z]):-
	H1 is X*H,
	multiply(D,X,Z).

division(N,D,[],N,N1,D1):- N1 < D1.
division([Hn|N],[Hd|D],[Qx|A],R,N1,D1):-
	N1 >= D1,
	Qx is Hn/Hd,
	multiply([Hd|D],Qx,AnewD),
	subtract([Hn|N],AnewD,[Hnn|NewN]),
	N1new is N1-1,
	division(NewN,[Hd|D],A,R,N1new,D1).

long_division(N,D,Q,R):-
	degree(N,N1),
	degree(D,D1),
	N1 >= D1,
%	left_shift(D,[Hd|NewD]),
	division(N,D,Q,R,N1,D1).

