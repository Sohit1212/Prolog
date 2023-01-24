list_subset([],[]).


list_subset([H|T],[H|Sub]):-
	list_subset(T,Sub).

list_subset([H|T],Sub):-
	list_subset(T,Sub).
