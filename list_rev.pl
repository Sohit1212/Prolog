acc_rev([],A,A).
acc_rev([H|T],A,X):- acc_rev(T,[H|A],X).

list_rev(L,X):- acc_rev(L,[],X).
