transpose([],[]).
transpose([H|T],X):- transpose(H,[H|T],X).

transpose([],_,[]).
transpose([_|Rs],M,[Xs|X]):-
	bar(M,Xs,Mtemp),
	transpose(Rs,Mtemp,X).

bar([],[],[]).
bar([[H|T]|Mr],[H|Xs],[T|Mtemp]):-
	bar(Mr,Xs,Mtemp).

foo([],[],0).
foo([H1|X],[H2|Y],H3):-
	foo(X,Y,H3new),
	H3 is H3new+H1*H2.

dot(X,[],[]).
dot(X,[A|T],[H|Z]):-
	dot(X,T,Z),
	foo(X,A,H).

matrixdot([],T,[]).
matrixdot([H1|X],T,[H3|Z]):-
	matrixdot(X,T,Z),
	dot(H1,T,H3).

matrixmul(X,Y,Z):-
	transpose(Y,T),
	matrixdot(X,T,Z).
