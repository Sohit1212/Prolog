
vectormul(X,[],[]).

vectormul(X,[H|T],[A|L]):-
	A is X*H,
	vectormul(X,T,L).
