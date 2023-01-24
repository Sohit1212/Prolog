get_boy_girl_samplespace(0,A,A,[]).
get_boy_girl_samplespace(N,A,X,[X1,X2|List]):-
	Nnew is N-1,Nnew >= 0,
	get_boy_girl_samplespace(Nnew,[boy|A],X1,List)
	get_boy_girl_samplespace(Nnew,[girl|A],X2,List). 
