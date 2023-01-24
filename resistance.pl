% Prolog program to find quivalent resistance

series(X,Y,Z):- Z is X+Y.
parallel(X,Y,Z):- Z is ((X*Y)/(X+Y)).
