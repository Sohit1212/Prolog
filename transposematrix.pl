transpose([],[]).
transpose([H|T],X):- transpose(H,[H|T],X).

transpose([],_,[]).
transpose([_|Rs],M,[Xs|X]):-
	bar(M,Xs,Mtemp),
	transpose(Rs,Mtemp,X).

bar([],[],[]).
bar([[H|T]|Mr],[H|Xs],[T|Mtemp]):-
	bar(Mr,Xs,Mtemp).
