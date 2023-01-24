byCar(auckland,hamilton).
byCar(hamilton,raglan).
byCar(valmont,saarbruecken).
byCar(valmont,metz).

byTrain(metz,frankfurt).
byTrain(saarbruecken,frankfurt).
byTrain(metz,paris).
byTrain(saarbruecken,paris).

byPlane(frankfurt,bangkok).
byPlane(frankfurt,singapore).
byPlane(paris,losAngeles).
byPlane(bangkok,auckland).
byPlane(losAngeles,auckland).

travel(X,Y):- byCar(X,Y);byTrain(X,Y);byPlane(X,Y).
travel(X,Y):-
	byCar(X,Z);byTrain(X,Z);byPlane(X,Z),
	travel(Z,Y).


travel(X,Y,_by):- 
	((byCar(X,Y),_by=byCar(X,Y));(byTrain(X,Y),_by=byTrain(X,Y));(byPlane(X,Y),_by=byPlane(X,Y))).
travel(X,Y,_by):-
	((byCar(X,Z),_by=byCar(X,Z,R));(byTrain(X,Z),_by=byTrain(X,Z,R));(byPlane(X,Z),_by=byPlane(X,Z,R))),
	travel(Z,Y,R).

