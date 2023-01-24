interm(0,zero).
interm(1,one).
interm(2,two).
interm(3,three).
interm(4,four).
interm(5,five).
interm(6,six).
interm(7,seven).
interm(8,eight).
interm(9,nine).

inwords([],[]). 
inwords([X|L1],[Y|L2]):- 
	inwords(L1,L2),
	interm(X,Y).
