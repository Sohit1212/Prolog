acclen([],A,A).
acclen([_|T],A,N):- Anew is A+1, acclen(T,Anew,N).

listlen(T,N):- acclen(T,0,N).
