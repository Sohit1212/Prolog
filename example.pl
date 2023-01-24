word(abalone,a,b,a,l,o,n,e).
word(abandon,a,b,a,n,d,o,n).
word(enhance,e,n,h,a,n,c,e).
word(anagram,a,n,a,g,r,a,m).
word(connect,c,o,n,n,e,c,t).
word(elegant,e,l,e,g,a,n,t).

crossword(V1,V2,V3,H1,H2,H3):-
	word(V1,P,Q,R,S,T,U,V),
	word(V2,A,B,C,D,E,F,G),
	word(V3,H,I,J,K,L,M,N),
	word(H1,X1,Q,X2,B,X3,I,X4),
	word(H2,Y1,S,Y2,D,Y3,K,Y4),
	word(H3,Z1,U,Z2,F,Z3,M,Z4).

