directTrain(forbach,saarbruecken).
directTrain(freyming,forbach).
directTrain(fahlquemont,stAvold).
directTrain(stAvold,forbach).
directTrain(saarbruecken,dudweiler).
directTrain(metz,fahlquemont).
directTrain(nancy,metz).


travelBetween(X,Y,P):- directTrain(X,Y);directTrain(Y,X).
travelBetween(X,Y,P):-
	(directTrain(X,Z);directTrain(Z,X)),
	Z\=P,
	travelBetween(Z,Y,X).
	
