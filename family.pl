% This program depicts family relationships
/*
domains
	name=symbol
predicates
	parent(name,name)
	female(name)
	male(name)
	mother(name,name)
	father(name,name)
	sister(name,name)
	brother(name,name)
clauses
*/	
	female(pam).
	female(liz).
	female(pat).
	female(ann).

	male(jim).
	male(bob).
	male(tom).
	male(peter).

	parent(pam,bob).
	parent(tom,bob).
	parent(tom,liz).
	parent(bob,ann).
	parent(bob,pat).
	parent(pat,jim).
	parent(bob,peter).
	parent(peter,jim).
	
	mother(X,Y):- parent(X,Y),female(X).
	father(X,Y):- parent(X,Y),male(X).
	haschild(X):- parent(X,_).
	sister(X,Y):- parent(Z,X),parent(Z,Y),female(X),X\==Y.
	brother(X,Y):- parent(Z,X),parent(Z,Y),male(X),X\==Y.
	grandparent(X,Y):- parent(X,Z),parent(Z,Y).
	grandmother(X,Y):- mother(X,Z),parent(Z,Y).
	grandfather(X,Y):- father(X,Z),parent(Z,Y).
	wife(X,Y):- mother(X,Z),father(Y,Z).
	uncle(X,Y):- parent(Z,Y),brother(X,Z).
	
	predecessor(X,Z):- parent(X,Z).
	predecessor(X,Z):- parent(X,Y),predecessor(Y,Z).

	sucessor(X,Z):- parent(Z,X).
	sucessor(X,Z):- parent(Z,Y),sucessor(X,Y).
