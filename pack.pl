del(X,[],[],[]).
del(X,[X|T],T1,[X|L1]):- del(X,T,T1,L1).
del(X,[Y|T],[Y|T],[]):- X \= Y.

pack([],[]).
pack([H|T],[[H|L1]|X]):-
	del(H,T,T1,L1),
	pack(T1,X).
